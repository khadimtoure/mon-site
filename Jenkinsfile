pipeline {
	agent any

    stages {
		stage('Cloner le dépôt') {
			steps {
				git 'https://github.com/khadimtoure/mon-site.git'
            }
        }

        stage('Construire l\'image Docker') {
			steps {
				sh 'docker build -t mon-site-html .'
            }
        }

        stage('Lancer le conteneur') {
			steps {
				sh 'docker stop site || true'
                sh 'docker rm site || true'
                sh 'docker run -d -p 8081:80 --name site mon-site-html'
            }
        }
    }
}
