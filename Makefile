all: jar

out: src/me/ayrx/Main.java
	mkdir $@
	javac -classpath lib/gson-2.8.5.jar:lib/jadx-core-dev.jar -sourcepath src -d $@ $<

jar: out
	jar cvfm FindNativeJNIMethods.jar src/META-INF/MANIFEST.MF  -C out/ .

clean:
	rm -rf out FindNativeJNIMethods.jar

.PHONEY: all out clean
