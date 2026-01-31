cat <<EOF > build.gradle
plugins { id 'java' }
repositories { mavenCentral() }
sourceSets {
    main { java { srcDirs = ['.'] } }
    test { java { srcDirs = ['.'] } }
}
dependencies { // Add JUnit 5 Jupiter API & Engine for testing 
 testImplementation'org.junit.jupiter:junit-jupiter-api:5.9.3'
 testRuntimeOnly 'org.junit.jupiter:junit-jupiter-engine:5.9.3' }

test { useJUnitPlatform() }
EOF
