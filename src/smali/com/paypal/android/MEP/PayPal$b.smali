.class final Lcom/paypal/android/MEP/PayPal$b;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/paypal/android/MEP/a;

.field protected b:Lcom/paypal/android/MEP/PayPalPreapproval;

.field protected c:Lcom/paypal/android/MEP/CheckoutButton;

.field protected d:Landroid/content/Context;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/String;

.field protected i:Ljava/lang/String;

.field protected j:I

.field protected k:I

.field protected l:I

.field protected m:Z

.field protected n:Z


# direct methods
.method public constructor <init>(Lcom/paypal/android/MEP/PayPal;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "https://www.paypal.com"

    iput-object v0, p0, Lcom/paypal/android/MEP/PayPal$b;->h:Ljava/lang/String;

    const-string v0, "https://www.paypal.com"

    iput-object v0, p0, Lcom/paypal/android/MEP/PayPal$b;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/paypal/android/MEP/PayPal$b;->a:Lcom/paypal/android/MEP/a;

    iput-object v1, p0, Lcom/paypal/android/MEP/PayPal$b;->b:Lcom/paypal/android/MEP/PayPalPreapproval;

    iput-object v1, p0, Lcom/paypal/android/MEP/PayPal$b;->c:Lcom/paypal/android/MEP/CheckoutButton;

    return-void
.end method
