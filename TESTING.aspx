<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TESTING.aspx.cs" Inherits="laundry.TESTING" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
   
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 173px;
            left: 160px;
            z-index: 1;
        }
        .auto-style2 {
            position: absolute;
            top: 73px;
            left: 278px;
            z-index: 1;
        }
        .modal-body{
            height:277px;
        }
        .auto-style3 {
            position: absolute;
            top: 73px;
            left: 50px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 39px;
            left: 50px;
            z-index: 1;
            right: 1244px;
        }
    </style>
   
</head>
<body>
    <form id="form1" runat="server">
   
        
    <asp:Button ID="myButton" runat="server" Text="Show Div" OnClick="myButton_Click" />  
    <%--           <asp:Button ID="myButton" runat="server" Text="Show Modal" OnClientClick="showModal()" />

        <!-- Bootstrap Modal -->
        <div id="myModal" class="modal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Modal Title</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <!-- Modal content goes here -->
                        This is the content inside the modal.
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <!-- Additional buttons if needed -->
                    </div>
                </div>
            </div>
        </div>

        <!-- Include Bootstrap JS and Popper.js -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>--%>

<%--        <!-- Your custom script to show the modal -->
        <script type="text/javascript">
            function showModal() {
                $('#myModal').modal('show');

            }--%>
            
        </script>
    </form>
</body>
</html>
