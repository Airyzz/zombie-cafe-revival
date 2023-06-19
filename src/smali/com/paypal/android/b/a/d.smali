.class public final Lcom/paypal/android/b/a/d;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/paypal/android/b/a/c;

.field public b:Lcom/paypal/android/b/a/c;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/w3c/dom/Element;)Lcom/paypal/android/b/a/d;
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/paypal/android/b/a/d;

    invoke-direct {v2}, Lcom/paypal/android/b/a/d;-><init>()V

    const-string v0, "from"

    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ne v3, v5, :cond_1

    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/paypal/android/b/a/c;->a(Lorg/w3c/dom/Element;)Lcom/paypal/android/b/a/c;

    move-result-object v0

    iput-object v0, v2, Lcom/paypal/android/b/a/d;->a:Lcom/paypal/android/b/a/c;

    :cond_1
    const-string v0, "to"

    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ne v3, v5, :cond_2

    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/paypal/android/b/a/c;->a(Lorg/w3c/dom/Element;)Lcom/paypal/android/b/a/c;

    move-result-object v0

    iput-object v0, v2, Lcom/paypal/android/b/a/d;->b:Lcom/paypal/android/b/a/c;

    :cond_2
    const-string v0, "exchangeRate"

    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-eq v3, v5, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-static {v0}, Lcom/capcom/zombiecafeandroid/g;->a(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/paypal/android/b/a/d;->c:Ljava/lang/String;

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/b/a/d;->c:Ljava/lang/String;

    return-object v0
.end method
