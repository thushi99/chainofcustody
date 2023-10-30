<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Upload Evidence</title>
    <link rel="stylesheet" href="style.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
    <body>
<div class="container py-5">
    <div class="d-flex w-100">
        <h3 class="col-auto flex-grow-1"><b>Add Evidence</b></h3>
        <button class="btn btn-sm bg-gradient rounded" type="button" onclick="location.reload()" style="background-color:#34495e;color:aliceblue;"><i class="fa fa-retweet"></i> Refresh List</button>
    </div>
    <hr>
    <div class="card" style="width:50%;">
        <div class="card-body">
            <form action="uploadTest.php" method="post" enctype="multipart/form-data"  id="upload-form">
                <div class="form-group">
                    <label for="caseID" style="font-size: 18px;">Case ID</label>
                    <input type="text" class="form-control" name="caseID" id="caseID" aria-describedby="emailHelp">
                </div>
                <br>
                <div class="form-group">
                    <label for="evidenceName" style="font-size: 18px;">Evidence Name</label>
                    <input type="text" class="form-control" name="evidenceName" id="exampleInputPassword1">
                </div>
                <br>
                <div class="form-group">
                    <label style="font-size: 18px;">Finger Print</label><br>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="fingerprint" id="fingerprintYes" value="Yes">
                        <label class="form-check-label" for="fingerprintYes">Yes</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="fingerprint" id="fingerprintNo" value="No">
                        <label class="form-check-label" for="fingerprintNo">No</label>
                    </div>
                </div>
                <br>
                <div class="form-group">
                    <label for="recoveredFrom" style="font-size: 18px;">Recovered From</label>
                    <input type="text" class="form-control" name="recoveredFrom" id="exampleInputPassword1">
                </div>
                <br>
                <div class="form-group">
                    <label for="assignedOfficer" style="font-size: 18px;">Assigned Officer</label>
                    <input type="text" class="form-control" name="assignedOfficer" id="exampleInputPassword1">
                </div>
                <br>
                <div class="mb-3">
                    <label for="formFile" class="form-label" style="font-size: 18px;">Upload the Evidence File</label>
                    <input type="file" name="evidencefile" id="profile_picture">
                </div>

                <br>
                <button type="submit" name="submit" class="btn btn-primary" onclick="location.reload()">Upload</button>
            </form>
            
        </div>
    </div>
</div>

</body>
</html>