<body>
    <div class="container-fluid py-5 " style="
    width: 1400px;
">
        <div class="d-flex w-100 justify-content-between align-items-center">
            <h3 class="col-auto"><b>Evidence List</b></h3>
            <button class="btn btn-sm rounded" style="background-color:#34495e;color:aliceblue;" type="button" onclick="location.reload()">
                <i class="fa fa-retweet"></i> Refresh List
            </button>
        </div>
        <hr>
        <div class="d-flex justify-content-center align-items-center">
            <div class="card" style="width: 100%;">
                <div class="card-body" style="width: 100%;">
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <div class="col-auto">
                            <span class="text-muted mr-2">Total Entries:
                                <?php
                                $qry = $conn->query("SELECT * FROM evidence;");
                                if (!$qry) {
                                    die("Error: " . $conn->error);
                                }
                                echo $qry->num_rows;
                                ?>
                            </span>
                        </div>
                        <div class="col-auto">
                            <input type="text" id="searchInput" class="form-control" placeholder="Search">
                        </div>
                    </div>
                    <table class="table table-bordered table-striped table-hover">
                        <thead style="text-align: center;">
                            <tr>
                                <th class="py-1 px-2">#</th>
                                <th class="py-1 px-2">Case ID</th>
                                <th class="py-1 px-2">Evidence Name</th>
                                <th class="py-1 px-2">Fingerprint</th>
                                <th class="py-1 px-2">Assigned Officer</th>
                                <th class="py-1 px-2">Evidence Location</th>
                                <th class="py-1 px-2">File Hash</th>
                                <th class="py-1 px-2">Uploaded by</th>
                                <th class="py-1 px-2">Action</th>
                                <th class="py-1 px-2">Verification</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $qry = $conn->query("SELECT * FROM evidence;");
                            $i = 1;
                            while ($row = $qry->fetch_assoc()) :
                            ?>
                                <tr>
                                    <td class="py-1 px-2" style="color:#000;"><?php echo $row['evidenceNumber'] ?></td>
                                    <td class="py-1 px-2" style="color:darkred;"><?php echo $row['caseID'] ?></td>
                                    <td class="py-1 px-2" style="color:;"><?php echo $row['evidenceName'] ?></td>
                                    <td class="py-1 px-2" style="color: <?php echo ($row['fingerPrint'] === 'Yes') ? 'blue' : 'red'; ?>"><?php echo $row['fingerPrint'] ?></td>
                                    <td class="py-1 px-2" style="color:#004161;"><?php echo $row['assignedOfficer'] ?></td>
                                    <td class="py-1 px-2" style="color:#003366;"><?php echo $row['imagePath'] ?></td>
                                    <td class="py-1 px-2" style="color:#006400;"><?php echo $row['fileHash'] ?></td>
                                    <td class="py-1 px-2" style="color:#8b0000;"><?php echo $row['uploadedBy'] ?></td>
                    
                                    <td class="py-1 px-2">
                                        <?php
                                        $fileName = $row['imagePath'];
                                        $caseid = $row['caseID'];
                                        $evidenceName = $row['evidenceName'];
                                        $imagePath = $row['imagePath'];
                                        $downloadLink = 'download.php?file=' . urlencode($fileName) . '&caseid=' . urlencode($caseid);
                                        ?>
                                        
                                        <a href="javascript:void(0);" onclick="downloadAndLog('<?php echo $downloadLink; ?>', '<?php echo $evidenceName; ?>', '<?php echo $caseid; ?>', '<?php echo $imagePath; ?>')">Download</a>
                                    </td>
                                    <td class="py-1 px-2" style="text-align: center;">
                                        <?php
                                        $verificationStatus = $row['verification'];
                                        $evidenceNumber = $row['evidenceNumber'];
                                        if ($verificationStatus == 0)
                                        {
                                            echo '<a href="#" onclick="showVerificationModal(' . $evidenceNumber . ', ' . $verificationStatus . ')">
                                                <img src="./assets/images/nonverified.png" width="100px" alt="Non-Verified" style="display: block; margin:auto;">
                                            </a>';
                                        } 
                                        else
                                        {
                                            echo '<a href="#" onclick="showVerificationModal(' . $evidenceNumber . ', ' . $verificationStatus . ')">
                                                <img src="./assets/images/verified.png" width="100px" alt="Verified" style="display: block; margin:auto;">
                                            </a>';
                                        }
                                        ?>
                                    </td>
                                </tr>
                            <?php endwhile; ?>
                            <?php if ($qry->num_rows <= 0) : ?>
                                <tr>
                                    <th class="tex-center" colspan="4">No data to display.</th>
                                </tr>
                            <?php endif; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal for Verification -->
    <div class="modal fade" id="verificationModal" tabindex="-1" role="dialog" aria-labelledby="verificationModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="verificationModalLabel">Verification</h5>
                </div>
                <div class="modal-body">
                    <p>Select the verification status:</p>
                    <form id="verificationForm" data-verification-status="">
                        <!-- Add a hidden input field to store the evidence number -->
                        <input type="hidden" id="evidenceNumberInput" name="evidenceNumber" value="">
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="verification" id="verifyRadio" value="verified">
                            <label class="form-check-label" for="verifyRadio">Verify</label>
                        </div>
                        <div class="form-check">
                            <input class = "form-check-input" type="radio" name="verification" id="notVerifyRadio" value="not-verified">
                            <label class="form-check-label" for="notVerifyRadio">Not Verify</label>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" onclick="updateVerification()">Save changes</button>
                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <!-- <script>
        function downloadAndLog(downloadLink, evidenceName, caseid, imagePath) {
            if (confirm('Are you sure you want to download this evidence "' + evidenceName + '"?')) {
                // confirmDownload(downloadLink, evidenceName, caseid);
                // Send an AJAX request to perform the download and log operation.
                $.ajax({
                    type: 'POST',
                    url: 'downloadAndLog.php', // Create a PHP file for this operation
                    data: {
                        downloadLink: downloadLink,
                        evidenceName: evidenceName,
                        caseid: caseid,
                        imagePath: imagePath
                    },
                    success: function(response) {
                        if (response === 'success') {
                            window.location.href = downloadLink + '&caseid=' + caseid;
                            alert('Download and log operation completed successfully.');
                        } else {
                            alert('Download and log operation failed: ' + response);
                        }
                    },
                    error: function(xhr, status, error) {
                        alert('Error: ' + error);
                    }
                });
            }
        }
    </script> -->
    <script>
    function downloadAndLog(downloadLink, evidenceName, caseid, imagePath) {
        if (confirm('Are you sure you want to download this evidence "' + evidenceName + '"?')) {
            $.ajax({
                type: 'POST',
                url: 'downloadAndLog.php',
                data: {
                    downloadLink: downloadLink,
                    evidenceName: evidenceName,
                    caseid: caseid,
                    imagePath: imagePath
                },
                success: function(response) {
                    if (response === 'success') {
                        window.location.href = downloadLink + '&caseid=' + caseid;
                        alert('Download and log operation completed successfully.');
                    } else {
                        alert('Download and log operation failed: ' + response);
                    }
                },
                error: function(xhr, status, error) {
                    alert('Error: ' + error);
                }
            });
        }
    }

    function showVerificationModal(evidenceNumber, verificationStatus) {
        document.getElementById('evidenceNumberInput').value = evidenceNumber;
        if (verificationStatus === 0) {
            document.getElementById('notVerifyRadio').checked = true;
        } else {
            document.getElementById('verifyRadio').checked = true;
        }
        $('#verificationModal').modal('show');
    }

    function updateVerification() {
        const verificationForm = document.getElementById('verificationForm');
        const verifyRadio = verificationForm.querySelector('input[name="verification"][value="verified"]');
        const notVerifyRadio = verificationForm.querySelector('input[name="verification"][value="not-verified"]');

        if (verifyRadio.checked) {
            var verificationStatus = 1; // Set verificationStatus to 1 when the "Verify" radio button is selected
        } else if (notVerifyRadio.checked) {
            var verificationStatus = 0; // Set verificationStatus to 0 when the "Not Verify" radio button is selected
        } else {
            alert('Please select a verification status.');
            return;
        }

        const evidenceNumber = document.getElementById('evidenceNumberInput').value;

        $.ajax({
            type: 'POST',
            url: 'updateVerification.php',
            data: {
                evidenceNumber: evidenceNumber,
                verificationStatus: verificationStatus
            },
            success: function(response) {
                if (response === 'success') {
                    // Optionally, you can update the displayed verification status without a page refresh
                    const verificationStatusElement = document.querySelector('td[data-evidence-number="' + evidenceNumber + '"]');
                    if (verificationStatusElement) {
                        verificationStatusElement.textContent = (verificationStatus === 1) ? 'verified' : 'not-verified';
                    }

                    alert('Verification status updated successfully.');
                } else {
                    alert('Verification status update failed: ' + response);
                }
            },
            error: function(xhr, status, error) {
                alert('Error: ' + error);
            }
        });

        $('#verificationModal').modal('hide');
    }

    function updateEvidenceLog(evidenceNumber, verificationStatus) {
        $.ajax({
            type: 'POST',
            url: 'updateEvidenceLog.php', // Create a PHP file for this operation
            data: {
                evidenceNumber: evidenceNumber,
                verificationStatus: verificationStatus
            },
            success: function(response) {
                if (response === 'success') {
                    console.log('Evidence log updated successfully.');
                } else {
                    console.error('Evidence log update failed: ' + response);
                }
            },
            error: function(xhr, status, error) {
                console.error('Error: ' + error);
            }
        });
    }

</script>
</body>