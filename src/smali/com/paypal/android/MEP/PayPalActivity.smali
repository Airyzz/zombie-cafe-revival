.class public final Lcom/paypal/android/MEP/PayPalActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# static fields
.field public static AUTH_SUCCESS:Ljava/lang/String; = null

.field public static CREATE_PAYMENT_FAIL:Ljava/lang/String; = null

.field public static CREATE_PAYMENT_SUCCESS:Ljava/lang/String; = null

.field public static final EXTRA_CORRELATION_ID:Ljava/lang/String; = "com.paypal.android.CORRELATION_ID"

.field public static final EXTRA_ERROR_ID:Ljava/lang/String; = "com.paypal.android.ERROR_ID"

.field public static final EXTRA_ERROR_MESSAGE:Ljava/lang/String; = "com.paypal.android.ERROR_MESSAGE"

.field public static final EXTRA_PAYMENT_ADJUSTER:Ljava/lang/String; = "com.paypal.android.PAYMENT_ADJUSTER"

.field public static final EXTRA_PAYMENT_INFO:Ljava/lang/String; = "com.paypal.android.PAYPAL_PAYMENT"

.field public static final EXTRA_PAYMENT_STATUS:Ljava/lang/String; = "com.paypal.android.PAYMENT_STATUS"

.field public static final EXTRA_PAY_KEY:Ljava/lang/String; = "com.paypal.android.PAY_KEY"

.field public static final EXTRA_PREAPPROVAL_INFO:Ljava/lang/String; = "com.paypal.android.PAYPAL_PREAPPROVAL"

.field public static final EXTRA_RESULT_DELEGATE:Ljava/lang/String; = "com.paypal.android.RESULT_DELEGATE"

.field public static FATAL_ERROR:Ljava/lang/String; = null

.field public static LOGIN_FAIL:Ljava/lang/String; = null

.field public static LOGIN_SUCCESS:Ljava/lang/String; = null

.field public static final RESULT_FAILURE:I = 0x2

.field public static final VIEW_ABOUT:I = 0x2

.field public static final VIEW_CREATE_PIN:I = 0x7

.field public static final VIEW_FATAL_ERROR:I = 0x5

.field public static final VIEW_INFO:I = 0x1

.field public static final VIEW_LOGIN:I = 0x0

.field public static final VIEW_NUM_VIEWS:I = 0x9

.field public static final VIEW_PREAPPROVAL:I = 0x6

.field public static final VIEW_REVIEW:I = 0x3

.field public static final VIEW_SUCCESS:I = 0x4

.field public static final VIEW_TEST:I = 0x8

.field public static _networkHandler:Lcom/paypal/android/b/b;

.field public static _paypal:Lcom/paypal/android/MEP/PayPal;

.field public static _popIntent:Ljava/lang/String;

.field public static _pushIntent:Ljava/lang/String;

.field public static _replaceIntent:Ljava/lang/String;

.field public static _updateIntent:Ljava/lang/String;

.field private static c:Lcom/paypal/android/MEP/PayPalActivity;

.field private static h:Ljava/lang/String;


# instance fields
.field private a:Lcom/capcom/zombiecafeandroid/p;

.field private b:Lcom/capcom/zombiecafeandroid/p;

.field private d:Ljava/util/Vector;

.field private e:Landroid/view/animation/Animation;

.field private f:Landroid/content/Intent;

.field private g:Z

.field private i:Landroid/content/BroadcastReceiver;

.field private j:Landroid/content/BroadcastReceiver;

.field public transactionSuccessful:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/paypal/android/MEP/PayPalActivity;->c:Lcom/paypal/android/MEP/PayPalActivity;

    sput-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/b;

    sput-object v0, Lcom/paypal/android/MEP/PayPalActivity;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->f:Landroid/content/Intent;

    iput-boolean v1, p0, Lcom/paypal/android/MEP/PayPalActivity;->g:Z

    iput-boolean v1, p0, Lcom/paypal/android/MEP/PayPalActivity;->transactionSuccessful:Z

    new-instance v0, Lcom/paypal/android/MEP/g;

    invoke-direct {v0, p0}, Lcom/paypal/android/MEP/g;-><init>(Lcom/paypal/android/MEP/PayPalActivity;)V

    iput-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->i:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/paypal/android/MEP/h;

    invoke-direct {v0}, Lcom/paypal/android/MEP/h;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->j:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/paypal/android/MEP/PayPalActivity;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/PayPalActivity;->f:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic a()Lcom/paypal/android/MEP/PayPalActivity;
    .locals 1

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->c:Lcom/paypal/android/MEP/PayPalActivity;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/paypal/android/MEP/PayPalActivity;->h:Ljava/lang/String;

    return-object p0
.end method

.method private a(I)Z
    .locals 11

    const/4 v10, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const/4 v5, 0x2

    if-nez p1, :cond_2

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/b;

    const-string v3, "mpl-login"

    invoke-virtual {v0, v3}, Lcom/paypal/android/b/b;->b(Ljava/lang/String;)V

    new-instance v9, Lcom/paypal/android/MEP/b/e;

    invoke-direct {v9, p0}, Lcom/paypal/android/MEP/b/e;-><init>(Landroid/content/Context;)V

    :goto_0
    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/a/i;

    :goto_1
    invoke-virtual {p0, v9}, Lcom/paypal/android/MEP/PayPalActivity;->setContentView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/paypal/android/MEP/PayPalActivity;->d:Ljava/util/Vector;

    invoke-virtual {v3, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/paypal/android/a/i;->b()V

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v0, v10}, Landroid/view/animation/ScaleAnimation;->setRepeatCount(I)V

    invoke-virtual {v0, p0}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v9, v0}, Lcom/paypal/android/a/i;->setAnimation(Landroid/view/animation/Animation;)V

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    move-object v0, v9

    check-cast v0, Lcom/paypal/android/MEP/b/e;

    sget-object v1, Lcom/paypal/android/MEP/b/e$a;->d:Lcom/paypal/android/MEP/b/e$a;

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/b/e;->a(Lcom/paypal/android/MEP/b/e$a;)V

    check-cast v9, Lcom/paypal/android/MEP/b/e;

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->h:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lcom/paypal/android/MEP/b/e;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/paypal/android/MEP/PayPalActivity;->h:Ljava/lang/String;

    :cond_1
    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/b;

    const-string v3, "mpl-help-binding"

    invoke-virtual {v0, v3}, Lcom/paypal/android/b/b;->b(Ljava/lang/String;)V

    new-instance v9, Lcom/paypal/android/MEP/b/d;

    invoke-direct {v9, p0}, Lcom/paypal/android/MEP/b/d;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    if-ne p1, v5, :cond_4

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/b;

    const-string v3, "mpl-help"

    invoke-virtual {v0, v3}, Lcom/paypal/android/b/b;->b(Ljava/lang/String;)V

    new-instance v9, Lcom/paypal/android/MEP/b/a;

    invoke-direct {v9, p0}, Lcom/paypal/android/MEP/b/a;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    new-instance v9, Lcom/paypal/android/MEP/b/g;

    invoke-direct {v9, p0}, Lcom/paypal/android/MEP/b/g;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    new-instance v9, Lcom/paypal/android/MEP/b/h;

    invoke-direct {v9, p0}, Lcom/paypal/android/MEP/b/h;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_6
    const/4 v0, 0x5

    if-ne p1, v0, :cond_7

    new-instance v9, Lcom/paypal/android/MEP/b/c;

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->f:Landroid/content/Intent;

    invoke-direct {v9, p0, v0}, Lcom/paypal/android/MEP/b/c;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x6

    if-ne p1, v0, :cond_8

    new-instance v9, Lcom/paypal/android/MEP/b/f;

    invoke-direct {v9, p0}, Lcom/paypal/android/MEP/b/f;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x7

    if-ne p1, v0, :cond_9

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/b;

    const-string v3, "mpl-create-PIN"

    invoke-virtual {v0, v3}, Lcom/paypal/android/b/b;->b(Ljava/lang/String;)V

    new-instance v9, Lcom/paypal/android/MEP/b/b;

    invoke-direct {v9, p0}, Lcom/paypal/android/MEP/b/b;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_9
    move v0, v10

    goto :goto_2

    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/paypal/android/MEP/PayPalActivity;)Z
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->c:Lcom/paypal/android/MEP/PayPalActivity;

    iget-object v0, v0, Lcom/paypal/android/MEP/PayPalActivity;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/a/i;

    iget-object v1, p0, Lcom/paypal/android/MEP/PayPalActivity;->d:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/paypal/android/MEP/PayPalActivity;->d:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/paypal/android/MEP/PayPalActivity;->d:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/paypal/android/a/i;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/paypal/android/MEP/PayPalActivity;->setContentView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {v0}, Lcom/paypal/android/a/i;->b()V

    return v2
.end method

.method static synthetic a(Lcom/paypal/android/MEP/PayPalActivity;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/paypal/android/MEP/PayPalActivity;->a(I)Z

    move-result v0

    return v0
.end method

.method private b()V
    .locals 4

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getAppID()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PUSH_DIALOG_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_pushIntent:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "POP_DIALOG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_popIntent:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "REPLACE_DIALOG_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_replaceIntent:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UPDATE_VIEW"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_updateIntent:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "LOGIN_SUCCESS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/paypal/android/MEP/PayPalActivity;->LOGIN_SUCCESS:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "LOGIN_FAIL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/paypal/android/MEP/PayPalActivity;->LOGIN_FAIL:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AUTH_SUCCESS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/paypal/android/MEP/PayPalActivity;->AUTH_SUCCESS:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CREATE_PAYMENT_SUCCESS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/paypal/android/MEP/PayPalActivity;->CREATE_PAYMENT_SUCCESS:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CREATE_PAYMENT_FAIL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/paypal/android/MEP/PayPalActivity;->CREATE_PAYMENT_FAIL:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FATAL_ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/MEP/PayPalActivity;->FATAL_ERROR:Ljava/lang/String;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_popIntent:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x9

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/paypal/android/MEP/PayPalActivity;->_pushIntent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/paypal/android/MEP/PayPalActivity;->_replaceIntent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_updateIntent:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/MEP/PayPalActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->LOGIN_SUCCESS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->LOGIN_FAIL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->CREATE_PAYMENT_SUCCESS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->CREATE_PAYMENT_FAIL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->FATAL_ERROR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/PayPalActivity;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/paypal/android/MEP/PayPalActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/paypal/android/b/b;->c()V

    return-void
.end method

.method static synthetic b(Lcom/paypal/android/MEP/PayPalActivity;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/a/i;

    invoke-virtual {v0}, Lcom/paypal/android/a/i;->a_()V

    return-void
.end method

.method static synthetic b(Lcom/paypal/android/MEP/PayPalActivity;I)Z
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/a/i;

    invoke-direct {p0, p1}, Lcom/paypal/android/MEP/PayPalActivity;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/paypal/android/MEP/PayPalActivity;->d:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c()V
    .locals 10

    const/4 v5, 0x2

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->d:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/paypal/android/a/i;

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->e:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->e:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->e:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->e:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->e:Landroid/view/animation/Animation;

    invoke-virtual {v9, v0}, Lcom/paypal/android/a/i;->setAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Lcom/paypal/android/a/m;

    iget-object v1, p0, Lcom/paypal/android/MEP/PayPalActivity;->e:Landroid/view/animation/Animation;

    invoke-direct {v0, v9, v1}, Lcom/paypal/android/a/m;-><init>(Lcom/paypal/android/a/i;Landroid/view/animation/Animation;)V

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/PayPalActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/paypal/android/MEP/PayPalActivity;->finish()V

    const/4 v0, 0x0

    sput-object v0, Lcom/paypal/android/MEP/PayPalActivity;->c:Lcom/paypal/android/MEP/PayPalActivity;

    goto :goto_0
.end method

.method public static getInstance()Lcom/paypal/android/MEP/PayPalActivity;
    .locals 1

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->c:Lcom/paypal/android/MEP/PayPalActivity;

    return-object v0
.end method


# virtual methods
.method public final AdjustAmounts$7727a73c(Lcom/fiksu/asotracking/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/acra/d;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->a:Lcom/capcom/zombiecafeandroid/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->a:Lcom/capcom/zombiecafeandroid/p;

    invoke-interface {v0}, Lcom/capcom/zombiecafeandroid/p;->a()Lorg/acra/d;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final adjustAmountsAdvanced$408a809f(Lcom/fiksu/asotracking/d;Ljava/lang/String;Ljava/util/Vector;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->a:Lcom/capcom/zombiecafeandroid/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->a:Lcom/capcom/zombiecafeandroid/p;

    invoke-interface {v0}, Lcom/capcom/zombiecafeandroid/p;->b()Ljava/util/Vector;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getDialog()Lcom/paypal/android/a/i;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/a/i;

    return-object v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/paypal/android/MEP/PayPalActivity;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/paypal/android/MEP/PayPalActivity;->c()V

    :cond_0
    return-void
.end method

.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->e:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->c:Lcom/paypal/android/MEP/PayPalActivity;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalActivity;->finish()V

    const/4 v0, 0x0

    sput-object v0, Lcom/paypal/android/MEP/PayPalActivity;->c:Lcom/paypal/android/MEP/PayPalActivity;

    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-boolean v3, p0, Lcom/paypal/android/MEP/PayPalActivity;->g:Z

    invoke-virtual {p0}, Lcom/paypal/android/MEP/PayPalActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    if-eqz v0, :cond_b

    const-string v1, "PayPal"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/paypal/android/MEP/PayPal;

    sput-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_paypal:Lcom/paypal/android/MEP/PayPal;

    const-string v1, "ViewStack"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2, v3}, Ljava/util/Vector;-><init>(I)V

    iput-object v2, p0, Lcom/paypal/android/MEP/PayPalActivity;->d:Ljava/util/Vector;

    const-string v2, "NetworkHandler"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/paypal/android/b/b;

    sput-object v2, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/b;

    const-string v2, "ReviewViewInfo"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "ReviewViewInfo"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Hashtable;

    sput-object v2, Lcom/paypal/android/MEP/b/g;->a:Ljava/util/Hashtable;

    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/paypal/android/MEP/PayPalActivity;->b()V

    move v4, v3

    move-object v3, v2

    :goto_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v4, v2, :cond_8

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/paypal/android/MEP/b/e;

    invoke-direct {v2, p0}, Lcom/paypal/android/MEP/b/e;-><init>(Landroid/content/Context;)V

    :goto_1
    iget-object v3, p0, Lcom/paypal/android/MEP/PayPalActivity;->d:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-object v3, v2

    goto :goto_0

    :cond_1
    if-ne v2, v5, :cond_2

    new-instance v2, Lcom/paypal/android/MEP/b/d;

    invoke-direct {v2, p0}, Lcom/paypal/android/MEP/b/d;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_2
    const/4 v6, 0x2

    if-ne v2, v6, :cond_3

    new-instance v2, Lcom/paypal/android/MEP/b/a;

    invoke-direct {v2, p0}, Lcom/paypal/android/MEP/b/a;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_3
    if-ne v2, v7, :cond_4

    new-instance v2, Lcom/paypal/android/MEP/b/g;

    invoke-direct {v2, p0}, Lcom/paypal/android/MEP/b/g;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_4
    const/4 v6, 0x4

    if-ne v2, v6, :cond_5

    new-instance v2, Lcom/paypal/android/MEP/b/h;

    invoke-direct {v2, p0}, Lcom/paypal/android/MEP/b/h;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_5
    const/4 v6, 0x5

    if-ne v2, v6, :cond_6

    new-instance v2, Lcom/paypal/android/MEP/b/c;

    invoke-direct {v2, p0}, Lcom/paypal/android/MEP/b/c;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_6
    const/4 v6, 0x6

    if-ne v2, v6, :cond_7

    new-instance v2, Lcom/paypal/android/MEP/b/f;

    invoke-direct {v2, p0}, Lcom/paypal/android/MEP/b/f;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_7
    const/4 v6, 0x7

    if-ne v2, v6, :cond_17

    new-instance v2, Lcom/paypal/android/MEP/b/b;

    invoke-direct {v2, p0}, Lcom/paypal/android/MEP/b/b;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_8
    const-string v1, "UserString"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/Editable;

    const/16 v2, 0x138c

    invoke-virtual {p0, v2}, Lcom/paypal/android/MEP/PayPalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    if-eqz v2, :cond_9

    if-eqz v1, :cond_9

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v3

    if-lez v3, :cond_9

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    const-string v1, "PasswordString"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    const/16 v1, 0x138d

    invoke-virtual {p0, v1}, Lcom/paypal/android/MEP/PayPalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    if-eqz v1, :cond_a

    if-eqz v0, :cond_a

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_a

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/PayPalActivity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    sput-object p0, Lcom/paypal/android/MEP/PayPalActivity;->c:Lcom/paypal/android/MEP/PayPalActivity;

    :goto_2
    return-void

    :cond_b
    invoke-virtual {p0}, Lcom/paypal/android/MEP/PayPalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v0, "com.paypal.android.PAYPAL_PAYMENT"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "com.paypal.android.PAYPAL_PREAPPROVAL"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "PayPalPayment/Preapproval object does not exist in intent"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const-string v0, "com.paypal.android.PAYMENT_ADJUSTER"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "com.paypal.android.PAYMENT_ADJUSTER"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/capcom/zombiecafeandroid/p;

    iput-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->a:Lcom/capcom/zombiecafeandroid/p;

    :cond_d
    const-string v0, "com.paypal.android.RESULT_DELEGATE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "com.paypal.android.RESULT_DELEGATE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/capcom/zombiecafeandroid/p;

    iput-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->b:Lcom/capcom/zombiecafeandroid/p;

    :cond_e
    invoke-direct {p0}, Lcom/paypal/android/MEP/PayPalActivity;->b()V

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/MEP/PayPal;->getPayType()I

    move-result v0

    if-ne v0, v7, :cond_12

    const-string v0, "com.paypal.android.PAYPAL_PREAPPROVAL"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/MEP/PayPalPreapproval;

    if-nez v0, :cond_f

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/b;

    const-string v1, "CorrelationId"

    invoke-virtual {v0, v1}, Lcom/paypal/android/b/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/b;

    const-string v2, "PayKey"

    invoke-virtual {v0, v2}, Lcom/paypal/android/b/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "-1"

    const-string v0, "ANDROID_no_payment"

    invoke-static {v0}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/paypal/android/MEP/PayPalActivity;->paymentFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_2

    :cond_f
    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalPreapproval;->isValid()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v2}, Lcom/paypal/android/MEP/PayPal;->getPreapprovalKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v2}, Lcom/paypal/android/MEP/PayPal;->getPreapprovalKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_11

    :cond_10
    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/b;

    const-string v1, "CorrelationId"

    invoke-virtual {v0, v1}, Lcom/paypal/android/b/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/b;

    const-string v2, "PayKey"

    invoke-virtual {v0, v2}, Lcom/paypal/android/b/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "-1"

    const-string v0, "ANDROID_invalid_payment"

    invoke-static {v0}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/paypal/android/MEP/PayPalActivity;->paymentFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_2

    :cond_11
    invoke-static {}, Lcom/paypal/android/b/b;->b()Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/b;

    const-string v1, "CorrelationId"

    invoke-virtual {v0, v1}, Lcom/paypal/android/b/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/b;

    const-string v2, "PayKey"

    invoke-virtual {v0, v2}, Lcom/paypal/android/b/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "-1"

    const-string v0, "ANDROID_application_not_authorized"

    invoke-static {v0}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/paypal/android/MEP/PayPalActivity;->paymentFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_2

    :cond_12
    const-string v0, "com.paypal.android.PAYPAL_PAYMENT"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/MEP/a;

    if-nez v0, :cond_13

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/b;

    const-string v1, "CorrelationId"

    invoke-virtual {v0, v1}, Lcom/paypal/android/b/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/b;

    const-string v2, "PayKey"

    invoke-virtual {v0, v2}, Lcom/paypal/android/b/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "-1"

    const-string v0, "ANDROID_no_payment"

    invoke-static {v0}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/paypal/android/MEP/PayPalActivity;->paymentFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_2

    :cond_13
    invoke-virtual {v0}, Lcom/paypal/android/MEP/a;->e()Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/b;

    const-string v1, "CorrelationId"

    invoke-virtual {v0, v1}, Lcom/paypal/android/b/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/b;

    const-string v2, "PayKey"

    invoke-virtual {v0, v2}, Lcom/paypal/android/b/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "-1"

    const-string v0, "ANDROID_invalid_payment"

    invoke-static {v0}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/paypal/android/MEP/PayPalActivity;->paymentFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_2

    :cond_14
    invoke-static {}, Lcom/paypal/android/b/b;->b()Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/b;

    const-string v1, "CorrelationId"

    invoke-virtual {v0, v1}, Lcom/paypal/android/b/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/b;

    const-string v2, "PayKey"

    invoke-virtual {v0, v2}, Lcom/paypal/android/b/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "-1"

    const-string v0, "ANDROID_application_not_authorized"

    invoke-static {v0}, Lcom/paypal/android/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/paypal/android/MEP/PayPalActivity;->paymentFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_2

    :cond_15
    sput-object p0, Lcom/paypal/android/MEP/PayPalActivity;->c:Lcom/paypal/android/MEP/PayPalActivity;

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->d:Ljava/util/Vector;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->d:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->setSize(I)V

    :goto_3
    invoke-static {v3}, Lcom/capcom/facebook/a;->a(I)V

    goto/16 :goto_2

    :cond_16
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v3}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->d:Ljava/util/Vector;

    goto :goto_3

    :cond_17
    move-object v2, v3

    goto/16 :goto_1
.end method

.method protected final onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    :try_start_0
    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/PayPalActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/PayPalActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_b

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/paypal/android/MEP/b/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/MEP/b/e;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b/e;->c()Lcom/paypal/android/MEP/b/e$a;

    move-result-object v0

    sget-object v1, Lcom/paypal/android/MEP/b/e$a;->b:Lcom/paypal/android/MEP/b/e$a;

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/paypal/android/MEP/a/a;

    invoke-direct {v0, p0}, Lcom/paypal/android/MEP/a/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/paypal/android/MEP/a/a;->show()V

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/paypal/android/MEP/b/g;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/MEP/b/g;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b/g;->c()Lcom/paypal/android/MEP/b/g$a;

    move-result-object v0

    sget-object v1, Lcom/paypal/android/MEP/b/g$a;->b:Lcom/paypal/android/MEP/b/g$a;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/MEP/b/g;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b/g;->c()Lcom/paypal/android/MEP/b/g$a;

    move-result-object v0

    sget-object v1, Lcom/paypal/android/MEP/b/g$a;->d:Lcom/paypal/android/MEP/b/g$a;

    if-eq v0, v1, :cond_2

    new-instance v0, Lcom/paypal/android/MEP/a/a;

    invoke-direct {v0, p0}, Lcom/paypal/android/MEP/a/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/paypal/android/MEP/a/a;->show()V

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/paypal/android/MEP/b/f;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/MEP/b/f;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b/f;->c()Lcom/paypal/android/MEP/b/f$a;

    move-result-object v0

    sget-object v1, Lcom/paypal/android/MEP/b/f$a;->c:Lcom/paypal/android/MEP/b/f$a;

    if-eq v0, v1, :cond_4

    new-instance v0, Lcom/paypal/android/MEP/a/a;

    invoke-direct {v0, p0}, Lcom/paypal/android/MEP/a/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/paypal/android/MEP/a/a;->show()V

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/paypal/android/MEP/b/a;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/paypal/android/MEP/b/d;

    if-eqz v0, :cond_7

    :cond_6
    invoke-static {}, Lcom/capcom/facebook/a;->a()V

    move v0, v2

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/paypal/android/MEP/b/h;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/paypal/android/MEP/b/b;

    if-eqz v0, :cond_a

    :cond_8
    iget-boolean v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->g:Z

    if-nez v0, :cond_9

    iput-boolean v2, p0, Lcom/paypal/android/MEP/PayPalActivity;->g:Z

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/b;

    const-string v1, "PayKey"

    invoke-virtual {v0, v1}, Lcom/paypal/android/b/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/b;

    const-string v3, "PaymentExecStatus"

    invoke-virtual {v1, v3}, Lcom/paypal/android/b/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/paypal/android/MEP/PayPalActivity;->paymentSucceeded(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_9
    move v0, v2

    goto/16 :goto_0

    :cond_a
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0

    :cond_b
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 6

    const/4 v2, 0x0

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    const-string v0, "PayPal"

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_paypal:Lcom/paypal/android/MEP/PayPal;

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->d:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/a/i;

    instance-of v5, v0, Lcom/paypal/android/MEP/b/e;

    if-eqz v5, :cond_0

    move v0, v2

    :goto_1
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    instance-of v5, v0, Lcom/paypal/android/MEP/b/d;

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    instance-of v5, v0, Lcom/paypal/android/MEP/b/a;

    if-eqz v5, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    instance-of v5, v0, Lcom/paypal/android/MEP/b/g;

    if-eqz v5, :cond_3

    const/4 v0, 0x3

    goto :goto_1

    :cond_3
    instance-of v5, v0, Lcom/paypal/android/MEP/b/h;

    if-eqz v5, :cond_4

    const/4 v0, 0x4

    goto :goto_1

    :cond_4
    instance-of v5, v0, Lcom/paypal/android/MEP/b/c;

    if-eqz v5, :cond_5

    const/4 v0, 0x5

    goto :goto_1

    :cond_5
    instance-of v5, v0, Lcom/paypal/android/MEP/b/f;

    if-eqz v5, :cond_6

    const/4 v0, 0x6

    goto :goto_1

    :cond_6
    instance-of v0, v0, Lcom/paypal/android/MEP/b/b;

    if-eqz v0, :cond_b

    const/4 v0, 0x7

    goto :goto_1

    :cond_7
    const-string v0, "ViewStack"

    invoke-virtual {v3, v0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "NetworkHandler"

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/b;

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/MEP/b/g;->a:Ljava/util/Hashtable;

    if-eqz v0, :cond_8

    const-string v0, "ReviewViewInfo"

    sget-object v1, Lcom/paypal/android/MEP/b/g;->a:Ljava/util/Hashtable;

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const/16 v0, 0x138c

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/PayPalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_9

    const-string v1, "UserString"

    invoke-virtual {v3, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const/16 v0, 0x138d

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/PayPalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_a

    const-string v1, "PasswordString"

    invoke-virtual {v3, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    return-object v3

    :cond_b
    move v0, v2

    goto/16 :goto_1
.end method

.method public final paymentCanceled()V
    .locals 3

    iget-boolean v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->transactionSuccessful:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/b;

    const-string v1, "PayKey"

    invoke-virtual {v0, v1}, Lcom/paypal/android/b/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/b;

    const-string v2, "PaymentExecStatus"

    invoke-virtual {v1, v2}, Lcom/paypal/android/b/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/MEP/PayPalActivity;->paymentSucceeded(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->b:Lcom/capcom/zombiecafeandroid/p;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->b:Lcom/capcom/zombiecafeandroid/p;

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.paypal.android.PAYMENT_STATUS"

    const-string v2, "OTHER"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/paypal/android/MEP/PayPalActivity;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/paypal/android/MEP/PayPalActivity;->c()V

    goto :goto_0
.end method

.method public final paymentFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 3

    iget-boolean v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->transactionSuccessful:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/b;

    const-string v1, "PayKey"

    invoke-virtual {v0, v1}, Lcom/paypal/android/b/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/b;

    const-string v2, "PaymentExecStatus"

    invoke-virtual {v1, v2}, Lcom/paypal/android/b/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/MEP/PayPalActivity;->paymentSucceeded(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->b:Lcom/capcom/zombiecafeandroid/p;

    if-eqz v0, :cond_2

    if-eqz p6, :cond_2

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->b:Lcom/capcom/zombiecafeandroid/p;

    :cond_2
    if-eqz p5, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.paypal.android.CORRELATION_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.paypal.android.PAY_KEY"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.paypal.android.ERROR_ID"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.paypal.android.ERROR_MESSAGE"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.paypal.android.PAYMENT_STATUS"

    const-string v2, "OTHER"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/paypal/android/MEP/PayPalActivity;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/paypal/android/MEP/PayPalActivity;->c()V

    goto :goto_0
.end method

.method public final paymentSucceeded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.paypal.android.PAY_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.paypal.android.PAYMENT_STATUS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/paypal/android/MEP/PayPalActivity;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/paypal/android/MEP/PayPalActivity;->c()V

    return-void
.end method

.method public final paymentSucceeded(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->b:Lcom/capcom/zombiecafeandroid/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->b:Lcom/capcom/zombiecafeandroid/p;

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/paypal/android/MEP/PayPalActivity;->paymentSucceeded(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final setTransactionSuccessful(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/paypal/android/MEP/PayPalActivity;->transactionSuccessful:Z

    return-void
.end method
