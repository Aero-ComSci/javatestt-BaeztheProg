cat <<EOF > build.gradle
plugins { id 'java' }
repositories { mavenCentral() }
sourceSets {
    main { java { srcDirs = ['.'] } }
    test { java { srcDirs = ['.'] } }
}
dependencies { testImplementation 'org.junit.jupiter:junit-jupiter:5.10.0' }
test { useJUnitPlatform() }
EOF
