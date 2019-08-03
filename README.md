# docker_image
Provides the official docker images in a controlled way to avoid CI issues for various private projects that I work on.

# Update
To keep up with the official docker image, do the following

1. Update the docker files for both docker and dind with the same version
2. Push the changes to git hub
3. Release the images with the same version as official docker image version
4. Test one project's CI to ensure that nothing is broken
5. If nothing is broken then tag the image as stable
