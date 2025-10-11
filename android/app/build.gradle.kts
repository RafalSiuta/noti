import java.util.Properties

plugins {
    id("com.android.application")
    id("org.jetbrains.kotlin.android")   // zamiast "kotlin-android"
    // Flutter Gradle Plugin musi być po Android & Kotlin
    id("dev.flutter.flutter-gradle-plugin")
}

val localProperties = Properties().apply {
    val f = rootProject.file("local.properties")
    if (f.exists()) {
        f.reader(Charsets.UTF_8).use { load(it) }
    }
}

val flutterVersionCodeFromLocal: Int =
    localProperties.getProperty("flutter.versionCode")?.toIntOrNull() ?: 1

val flutterVersionNameFromLocal: String =
    localProperties.getProperty("flutter.versionName") ?: "1.0"

val keystoreProperties = Properties().apply {
    val f = rootProject.file("key.properties")
    if (f.exists()) {
        f.inputStream().use { load(it) }
    }
}
android {
    namespace = "org.r85.calendar_todo"

    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    defaultConfig {
        applicationId = "org.r85.calendar_todo"
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    // Java 17 + desugaring (wymagane m.in. przez flutter_local_notifications 19.x)
    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
        isCoreLibraryDesugaringEnabled = true
    }

    // dopasuj do Javy 17
    kotlinOptions {
        jvmTarget = "17"
    }

    signingConfigs {
        // Release ze stałych z key.properties (jeśli plik istnieje)
        create("release") {
            val storeFilePath = keystoreProperties.getProperty("storeFile") // np. "../keystore/noti.jks"
            if (storeFilePath != null) {
                storeFile = file(storeFilePath)
                storePassword = keystoreProperties.getProperty("storePassword")
                keyAlias = keystoreProperties.getProperty("keyAlias")
                keyPassword = keystoreProperties.getProperty("keyPassword")
            }
        }
    }

    buildTypes {
        getByName("release") {
            // podczas developmentu możesz zostawić debug:
            // signingConfig = signingConfigs.getByName("debug")

            // PRZED publikacją przełącz na release:
            signingConfig = signingConfigs.getByName("release")

            // ustawienia minifikacji według potrzeb:
            isMinifyEnabled = false
            isShrinkResources = false
            // jeśli włączysz minifikację, dodaj reguły:
            // proguardFiles(
            //     getDefaultProguardFile("proguard-android-optimize.txt"),
            //     "proguard-rules.pro"
            // )
        }
        getByName("debug") {
            signingConfig = signingConfigs.getByName("debug")
        }
    }

}



dependencies {
    // Wsparcie dla java.time itp. na API 21–25
    coreLibraryDesugaring("com.android.tools:desugar_jdk_libs:2.1.4")

    // reszta zależności (opcjonalne)
    implementation("androidx.window:window:1.0.0")
    implementation("androidx.window:window-java:1.0.0")
    implementation("org.jetbrains.kotlin:kotlin-stdlib-jdk8")
}

flutter {
    source = "../.."
}

