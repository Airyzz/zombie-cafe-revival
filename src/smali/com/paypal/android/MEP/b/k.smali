.class final Lcom/paypal/android/MEP/b/k;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private synthetic a:Lcom/paypal/android/MEP/b/e;


# direct methods
.method private constructor <init>(Lcom/paypal/android/MEP/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/b/k;->a:Lcom/paypal/android/MEP/b/e;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/paypal/android/MEP/b/e;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/paypal/android/MEP/b/k;-><init>(Lcom/paypal/android/MEP/b/e;)V

    return-void
.end method


# virtual methods
.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "About.Quick.Pay"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/MEP/b/k;->a:Lcom/paypal/android/MEP/b/e;

    iget-object v1, p0, Lcom/paypal/android/MEP/b/k;->a:Lcom/paypal/android/MEP/b/e;

    invoke-static {v1}, Lcom/paypal/android/MEP/b/e;->a(Lcom/paypal/android/MEP/b/e;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/b/e;->onClick(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
