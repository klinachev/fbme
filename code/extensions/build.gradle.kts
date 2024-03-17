import org.jetbrains.kotlin.gradle.dsl.KotlinCompile

plugins {
    mps
    kotlin
}

dependencies {
    compileOnly(mpsDistribution())
    compileOnly(project(":code:library"))
    compileOnly(project(":code:language"))

    mpsImplementation(project(":code:library", "mps"))
    mpsImplementation(project(":code:language", "mps"))

    testImplementation(mpsDistribution())
    testImplementation(project(":code:library"))
    testImplementation(project(":code:language"))
    testImplementation(project(":code:platform"))

}

mps {
    moduleName.set("org.fbme.extensions.lib")
}

val test by tasks.getting(Test::class) {
    dependsOn(
        ":code:library:buildDistPlugin",
        "buildDistPlugin"
    )
}

val compileKotlin by tasks.getting(KotlinCompile::class) {
    kotlinOptions.freeCompilerArgs = listOf("-Xjvm-default=all")
}