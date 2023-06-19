.class public final Lcom/paypal/android/b/a/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/math/BigDecimal;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/w3c/dom/Element;)Lcom/paypal/android/b/a/c;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/paypal/android/b/a/c;

    invoke-direct {v2}, Lcom/paypal/android/b/a/c;-><init>()V

    const-string v0, "code"

    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-eq v3, v5, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-static {v0}, Lcom/capcom/zombiecafeandroid/g;->a(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/paypal/android/b/a/c;->b:Ljava/lang/String;

    const-string v0, "amount"

    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-eq v3, v5, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-static {v0}, Lcom/capcom/zombiecafeandroid/g;->a(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/paypal/android/b/a/c;->a(Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/b/a/c;->a:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/paypal/android/b/a/c;->a:Ljava/math/BigDecimal;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "0.0"

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/paypal/android/b/a/c;->a:Ljava/math/BigDecimal;

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/b/a/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/b/a/c;->b:Ljava/lang/String;

    return-void
.end method
