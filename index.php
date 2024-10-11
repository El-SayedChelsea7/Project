

<?php
require_once 'config.php';
// الحصول على جميع الأسئلة والخيارات
$questions = $conn->query('SELECT * FROM questions');

?>

<!DOCTYPE html>
<html lang="ar">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>اختبار ديني</title>
   <link rel="stylesheet" href="style.css">
    </head>
<body dir="rtl">

<div class="quiz-container">
    <h1>اختبار ديني</h1>
    <form action="result.php" method="POST">
        <?php while ($question = $questions->fetch_assoc()) { ?>
            <div class="question">
                <h3><?php echo $question['question']; ?></h3>
                <ul class="options">
                    <?php
                    $question_id = $question['id'];
                    $options = $conn->query("SELECT * FROM options WHERE question_id = $question_id");
                    while ($option = $options->fetch_assoc()) {
                    ?>
                    <li>
                        <input type="radio" name="question_<?php echo $question_id; ?>" value="<?php echo $option['id']; ?>">
                        <?php echo $option['option_text']; ?>
                    </li>
                    <?php } ?>
                </ul>
            </div>
        <?php } ?>
        <button type="submit">عرض النتيجة</button>
    </form>
</div>
            
</body>
  </html>