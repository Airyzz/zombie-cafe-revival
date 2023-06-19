.class final Lcom/paypal/android/MEP/PayPal$a;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:I

.field protected e:I

.field protected f:Z

.field protected g:Z

.field protected h:Ljava/lang/String;

.field protected i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/paypal/android/MEP/PayPal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/paypal/android/MEP/PayPal$a;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v1, p0, Lcom/paypal/android/MEP/PayPal$a;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/paypal/android/MEP/PayPal$a;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/paypal/android/MEP/PayPal$a;->c:Ljava/lang/String;

    iput v0, p0, Lcom/paypal/android/MEP/PayPal$a;->d:I

    iput v0, p0, Lcom/paypal/android/MEP/PayPal$a;->e:I

    iput-boolean v0, p0, Lcom/paypal/android/MEP/PayPal$a;->f:Z

    iput-boolean v0, p0, Lcom/paypal/android/MEP/PayPal$a;->g:Z

    return-void
.end method
