mkdir -p src/main/java src/test/java

if [ -f Calculator.java ]; then mv Calculator.java src/main/java/ 
fi

if [ -f CalculatorTest.java ]; then mv CalculatorTest.java src/test/java/ 
fi

cat > build.gradle <<'EOF' plugins { id 'java' }

repositories { mavenCentral() }

dependencies { testImplementation 'org.junit.jupiter:junit-jupiter:5.10.0' }

test { useJUnitPlatform() } EOF
