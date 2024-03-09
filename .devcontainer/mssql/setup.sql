CREATE LOGIN [buildpoc-internal-tests-app] WITH PASSWORD = 'qwerty1!'

CREATE DATABASE [buildpoc-internal-template]
GO
USE [buildpoc-internal-template]
ALTER DATABASE [buildpoc-internal-template] SET ALLOW_SNAPSHOT_ISOLATION ON
GO
CREATE USER [buildpoc-internal-tests-app] FOR LOGIN [buildpoc-internal-tests-app]
GO
EXEC sp_addrolemember 'db_owner', 'buildpoc-internal-tests-app'
GO

CREATE DATABASE [buildpoc-cypress-tests-template]
GO
ALTER DATABASE [buildpoc-cypress-tests-template] SET ALLOW_SNAPSHOT_ISOLATION ON
GO
USE [buildpoc-cypress-tests-template]
CREATE USER [buildpoc-internal-tests-app] FOR LOGIN [buildpoc-internal-tests-app]
GO
EXEC sp_addrolemember 'db_owner', 'buildpoc-internal-tests-app'
GO
