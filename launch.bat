echo "Checking environment..."
java -version
echo "starting Thermos..."
java -XX:+UseG1GC -XX:StringTableSize=1000003 -XX:+UseFastAccessorMethods -XX:+OptimizeStringConcat -XX:MetaspaceSize=512m -XX:MaxMetaspaceSize=4096m -XX:+AggressiveOpts -XX:MaxGCPauseMillis=50 -XX:+UseStringDeduplication -Xms512M -Xmx6G -XX:hashCode=5 -Dfile.encoding=UTF-8 -jar Thermos.jar --log-strip-color
echo "Remember to name thermos jar file Thermos"
