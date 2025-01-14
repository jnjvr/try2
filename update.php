<?php
// Include the database connection file
require_once('dbh.php');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Retrieve the form data
    $employee_id = $_POST['employee_id'] ?? '';
    $prefix = $_POST['prefix'] ?? '';
    $last_name = $_POST['last_name'] ?? '';
    $middle_name = $_POST['middle_name'] ?? '';
    $department = $_POST['department'] ?? '';
    $position = $_POST['position'] ?? '';
    $date_started = $_POST['date_started'] ?? '';
    $nickname = $_POST['nickname'] ?? '';
    $religion = $_POST['religion'] ?? '';
    $email = $_POST['email'] ?? '';
    $gender = $_POST['gender'] ?? '';
    $civil_status = $_POST['civil_status'] ?? '';
    $birthday = $_POST['birthday'] ?? '';
    $place_of_birth = $_POST['place_of_birth'] ?? '';
    $present_street = $_POST['present_street'] ?? '';
    $present_barangay = $_POST['present_barangay'] ?? '';
    $present_city = $_POST['present_city'] ?? '';
    $present_province = $_POST['present_province'] ?? '';
    $present_zip = $_POST['present_zip'] ?? '';
    $permanent_street = $_POST['permanent_street'] ?? '';
    $permanent_barangay = $_POST['permanent_barangay'] ?? '';
    $permanent_city = $_POST['permanent_city'] ?? '';
    $permanent_province = $_POST['permanent_province'] ?? '';
    $permanent_zip = $_POST['permanent_zip'] ?? '';
    $provincial_street = $_POST['provincial_street'] ?? '';
    $provincial_barangay = $_POST['provincial_barangay'] ?? '';
    $provincial_city = $_POST['provincial_city'] ?? '';
    $provincial_province = $_POST['provincial_province'] ?? '';
    $provincial_zip = $_POST['provincial_zip'] ?? '';
    $phil_no = $_POST['phil_no'] ?? '';
    $pagibig_no = $_POST['pagibig_no'] ?? '';
    $tin = $_POST['tin'] ?? '';
    $sss_no = $_POST['sss_no'] ?? '';
    $prc = $_POST['prc'] ?? '';
    $father_name = $_POST['father_name'] ?? '';
    $f_occupation = $_POST['f_occupation'] ?? '';
    $f_date_of_birth = $_POST['f_date_of_birth'] ?? '';
    $f_contact_number = $_POST['f_contact_number'] ?? '';
    $mother_name = $_POST['mother_name'] ?? '';
    $m_occupation = $_POST['m_occupation'] ?? '';
    $m_date_of_birth = $_POST['m_date_of_birth'] ?? '';
    $m_contact_number = $_POST['m_contact_number'] ?? '';
    $spouse_name = $_POST['spouse_name'] ?? '';
    $spouse_occupation = $_POST['spouse_occupation'] ?? '';
    $spouse_date_of_birth = $_POST['spouse_date_of_birth'] ?? '';
    $spouse_contact_number = $_POST['spouse_contact_number'] ?? '';
    $contact_name = $_POST['contact_name'] ?? '';
    $contact_add = $_POST['contact_add'] ?? '';
    $contact_number = $_POST['contact_number'] ?? '';
    $contact_relationship = $_POST['contact_relationship'] ?? '';
    $dependents_name = $_POST['dependents_name'] ?? '';
    $dependents_age = $_POST['dependents_age'] ?? '';
    $dependents_relationship = $_POST['dependents_relationship'] ?? '';
    $dependentsb_name = $_POST['dependentsb_name'] ?? '';
    $dependentsb_age = $_POST['dependentsb_age'] ?? '';
    $dependentsb_relationship = $_POST['dependentsb_relationship'] ?? '';
    $weight = $_POST['weight'] ?? '';
    $height = $_POST['height'] ?? '';
    $blood_type = $_POST['blood_type'] ?? '';
    $xray_date = $_POST['xray_date'] ?? '';
    $xray_result = $_POST['xray_result'] ?? '';
    $hs_school = $_POST['hs_school'] ?? '';
    $hs_attainment = $_POST['hs_attainment'] ?? '';
    $hs_started = $_POST['hs_started'] ?? '';
    $hs_ended = $_POST['hs_ended'] ?? '';
    $v_school = $_POST['v_school'] ?? '';
    $v_course = $_POST['v_course'] ?? '';
    $v_attainment = $_POST['v_attainment'] ?? '';
    $v_started = $_POST['v_started'] ?? '';
    $v_ended = $_POST['v_ended'] ?? '';
    $college_school = $_POST['college_school'] ?? '';
    $college_course = $_POST['college_course'] ?? '';
    $college_attainment = $_POST['college_attainment'] ?? '';
    $college_started = $_POST['college_started'] ?? '';
    $college_ended = $_POST['college_ended'] ?? '';
    $research_name = $_POST['research_name'] ?? '';
    $research_date = $_POST['research_date'] ?? '';
    $research_nametwo = $_POST['research_nametwo'] ?? '';
    $research_datetwo = $_POST['research_datetwo'] ?? '';
    $seminar_name = $_POST['seminar_name'] ?? '';
    $seminar_role = $_POST['seminar_role'] ?? '';
    $seminar_sponsor = $_POST['seminar_sponsor'] ?? '';
    $seminar_date = $_POST['seminar_date'] ?? '';
    $seminar_nametwo = $_POST['seminar_nametwo'] ?? '';
    $seminar_roletwo = $_POST['seminar_roletwo'] ?? '';
    $seminar_sponsortwo = $_POST['seminar_sponsortwo'] ?? '';
    $seminar_datetwo = $_POST['seminar_datetwo'] ?? '';

    // Retrieve and sanitize the phone number input
    $phone_number = $_POST['phone_number'] ?? '';

    // Retrieve the citizenship and sanitize input
    $citizenship = $_POST['citizenship'] ?? '';

    // Update the employee information in the database
    $sql = "UPDATE employee SET 
    prefix='$prefix',
    last_name='$last_name',
    middle_name='$middle_name',
    department='$department',
    position='$position',
    citizenship='$citizenship',
    nickname='$nickname',
    religion='$religion',
    email='$email',
    gender='$gender',
    civil_status='$civil_status',
    birthday='$birthday',
    phone_number='$phone_number',
    place_of_birth='$place_of_birth',
    present_street='$present_street',
    present_barangay='$present_barangay',
    present_city='$present_city',
    present_province='$present_province',
    present_zip='$present_zip',
    permanent_street='$permanent_street',
    permanent_barangay='$permanent_barangay',
    permanent_city='$permanent_city',
    permanent_province='$permanent_province',
    permanent_zip='$permanent_zip',
    provincial_street='$provincial_street',
    provincial_barangay='$provincial_barangay',
    provincial_city='$provincial_city',
    provincial_province='$provincial_province',
    provincial_zip='$provincial_zip',
    phil_no='$phil_no',
    pagibig_no='$pagibig_no',
    tin='$tin',
    sss_no='$sss_no',
    prc='$prc',
    father_name='$father_name',
    f_occupation='$f_occupation',
    f_date_of_birth='$f_date_of_birth',
    f_contact_number='$f_contact_number',
    mother_name='$mother_name',
    m_occupation='$m_occupation',
    m_date_of_birth='$m_date_of_birth',
    m_contact_number='$m_contact_number',
    spouse_name='$spouse_name',
    spouse_occupation='$spouse_occupation',
    spouse_date_of_birth='$spouse_date_of_birth',
    spouse_contact_number='$spouse_contact_number',
    contact_name='$contact_name',
    contact_add='$contact_add',
    contact_number='$contact_number',
    contact_relationship='$contact_relationship',
    dependents_name='$dependents_name',
    dependents_age='$dependents_age',
    dependents_relationship='$dependents_relationship',
    dependentsb_name='$dependentsb_name',
    dependentsb_age='$dependentsb_age',
    dependentsb_relationship='$dependentsb_relationship',
    weight='$weight',
    height='$height',
    blood_type='$blood_type',
    xray_date='$xray_date',
    xray_result='$xray_result',
    hs_school='$hs_school',
    hs_attainment='$hs_attainment',
    hs_started='$hs_started',
    hs_ended='$hs_ended',
    v_school='$v_school',
    v_course='$v_course',
    v_attainment='$v_attainment',
    v_started='$v_started',
    v_ended='$v_ended',
    college_school='$college_school',
    college_course='$college_course',
    college_attainment='$college_attainment',
    college_started='$college_started',
    college_ended='$college_ended',
    research_name='$research_name',
    research_date='$research_date',
    research_nametwo='$research_nametwo',
    research_datetwo='$research_datetwo',
    seminar_name='$seminar_name',
    seminar_role='$seminar_role',
    seminar_sponsor='$seminar_sponsor',
    seminar_date='$seminar_date',
    seminar_nametwo='$seminar_nametwo',
    seminar_roletwo='$seminar_roletwo',
    seminar_sponsortwo='$seminar_sponsortwo',
    seminar_datetwo='$seminar_datetwo'
    WHERE employee_id='$employee_id'";

    if (mysqli_query($conn, $sql)) {
        // Redirect to admin_homepage.php after successful update
        header("Location: ../admin_homepage.php");
        exit;
    } else {
        echo "Error updating employee information: " . mysqli_error($conn);
    }
} else {
    echo "Invalid request.";
}
$id = (isset($_GET['id']) ? $_GET['id'] : '');
$sql = "SELECT * FROM `employee` WHERE id= '$id'";
$result = mysqli_query($conn, $sql);
if($result){
  while($res = mysqli_fetch_assoc($result)){
    $id = $res['id'];
    $prefix = $res['prefix'];
    $first_name = $res['first_name'];
    $last_name = $res['last_name'];
    $middle_name = $res['middle_name'];
    $department = $res['department'];
    $position = $res['position'];
    $date_started = $res['date_started'];
    $nickname = $res['nickname'];
    $religion = $res['religion'];
    $citizenship = $res['citizenship'];
    $email = $res['email'];
    $employee_id = $res['employee_id'];
    $gender = $res['gender'];
    $phone_number = $res['phone_number'];
    $civil_status = $res['civil_status'];
    $birthday = $res['birthday'];
    $place_of_birth = $res['place_of_birth'];
    $present_street = $res['present_street'];
    $present_barangay = $res['present_barangay'];
    $present_city = $res['present_city'];
    $present_province = $res['present_province'];
    $present_zip = $res['present_zip'];
    $permanent_street = $res['permanent_street'];
    $permanent_barangay = $res['permanent_barangay'];
    $permanent_city = $res['permanent_city'];
    $permanent_province = $res['permanent_province'];
    $permanent_zip = $res['permanent_zip'];
    $provincial_street = $res['provincial_street'];
    $provincial_barangay = $res['provincial_barangay'];
    $provincial_city = $res['provincial_city'];
    $provincial_province = $res['provincial_province'];
    $provincial_zip = $res['provincial_zip'];
    $phil_no = $res['phil_no'];
    $pagibig_no = $res['pagibig_no'];
    $tin = $res['tin'];
    $sss_no = $res['sss_no'];
    $prc = $res['prc'];
    $father_name = $res['father_name'];
    $f_occupation = $res['f_occupation'];
    $f_date_of_birth = $res['f_date_of_birth'];
    $f_contact_number = $res['f_contact_number'];
    $mother_name = $res['mother_name'];
    $m_occupation = $res['m_occupation'];
    $m_date_of_birth = $res['m_date_of_birth'];
    $m_contact_number = $res['m_contact_number'];
    $spouse_name = $res['spouse_name'];
    $spouse_occupation = $res['spouse_occupation'];
    $spouse_date_of_birth = $res['spouse_date_of_birth'];
    $spouse_contact_number = $res['spouse_contact_number'];
    $contact_name = $res['contact_name'];
    $contact_add = $res['contact_add'];
    $contact_number = $res['contact_number'];
    $contact_relationship = $res['contact_relationship'];
    $dependents_name = $res['dependents_name'];
    $dependents_age = $res['dependents_age'];
    $dependents_relationship = $res['dependents_relationship'];
    $dependentsb_name = $res['dependentsb_name'];
    $dependentsb_age = $res['dependentsb_age'];
    $dependentsb_relationship = $res['dependentsb_relationship'];
    $weight = $res['weight'];
    $height = $res['height'];
    $blood_type = $res['blood_type'];
    $xray_date = $res['xray_date'];
    $xray_result = $res['xray_result'];
    $hs_school = $res['hs_school'];
    $hs_attainment = $res['hs_attainment'];
    $hs_started = $res['hs_started'];
    $hs_ended = $res['hs_ended'];
    $v_school = $res['v_school'];
    $v_course = $res['v_course'];
    $v_attainment = $res['v_attainment'];
    $v_started = $res['v_started'];
    $v_ended = $res['v_ended'];
    $college_school = $res['college_school'];
    $college_course = $res['college_course'];
    $college_attainment = $res['college_attainment'];
    $college_started = $res['college_started'];
    $college_ended = $res['college_ended'];
    $research_name = $res['research_name'];
    $research_date = $res['research_date'];
    $research_nametwo = $res['research_nametwo'];
    $research_datetwo = $res['research_datetwo'];
    $seminar_name = $res['seminar_name'];
    $seminar_role = $res['seminar_sponsor'];
    $seminar_sponsor = $res['seminar_sponsor'];
    $seminar_date = $res['seminar_date'];
    $seminar_nametwo = $res['seminar_nametwo'];
    $seminar_roletwo = $res['seminar_roletwo'];
    $seminar_sponsortwo = $res['seminar_sponsortwo'];
    $seminar_datetwo = $res['seminar_datetwo'];
  }
}
?>
