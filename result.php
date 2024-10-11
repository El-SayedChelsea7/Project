
<?php
require_once 'config.php';
// الحصول على عدد الأسئلة
$questions = $conn->query('SELECT * FROM questions');

$total_questions = $questions->num_rows;
$correct_answers = 0;
$i=0;
while ($question = $questions->fetch_assoc()) {
    $question_id = $question['id'];
    
    $correct_option = $question['correct_option_id'];
    $i++;
    // التحقق إذا كان المستخدم جاوب على السؤال
    if (isset(  $_POST["question_$question_id"] ) &&   $_POST["question_$question_id"] >0) {
       $user_answer = $_POST["question_$question_id"];

        // التحقق من الإجابة الصحيحة
        if ($user_answer == $correct_option) {
            $correct_answers++;
        }
    }else{
        echo 'من فضلك اجب عن السؤال رقم -'. $i;
    echo '<br>';
    }
}

// حساب النتيجة النهائية
$score = ($correct_answers / $total_questions) * 100;

?>

<!DOCTYPE html>
<html lang="ar">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>نتيجة الاختبار</title>
   <link rel="stylesheet" href="style.css">
</head>
<body>

<div class="result-container">
    <h1>نتيجة الاختبار</h1>
    <div class="result">
        <p>لقد حصلت على: <?php echo $correct_answers; ?> من <?php echo $total_questions; ?></p>
        <p>النتيجة النهائية: <?php echo $score; ?>%</p>
    </div>
</div>

</body>
</html>
