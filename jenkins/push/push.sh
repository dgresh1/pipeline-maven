echo "****************"
echo "** Pushing Image*****"
echo "*********************"

IMAGE="maven-project"

echo "** Logging IN ****"
docker login -u borntolag -p $PASS
echo "** Tagging Image ***"
docker tag $IMAGE:$BUILD_TAG borntolag/$IMAGE:$BUILD_TAG
echo "*** Pushing Image ***"
docker push borntolag/$IMAGE:$BUILD_TAG
