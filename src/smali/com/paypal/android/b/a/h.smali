.class public final Lcom/paypal/android/b/a/h;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/paypal/android/b/a/c;

.field public b:Lcom/paypal/android/b/a/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/b/a/h;->a:Lcom/paypal/android/b/a/c;

    iput-object v0, p0, Lcom/paypal/android/b/a/h;->b:Lcom/paypal/android/b/a/e;

    return-void
.end method

.method public static a(Lorg/w3c/dom/Element;)Lcom/paypal/android/b/a/h;
    .locals 8

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/paypal/android/b/a/h;

    invoke-direct {v2}, Lcom/paypal/android/b/a/h;-><init>()V

    iput-object v1, v2, Lcom/paypal/android/b/a/h;->a:Lcom/paypal/android/b/a/c;

    iput-object v1, v2, Lcom/paypal/android/b/a/h;->b:Lcom/paypal/android/b/a/e;

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v3, v5, :cond_3

    invoke-interface {v4, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "charge"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v0}, Lcom/paypal/android/b/a/c;->a(Lorg/w3c/dom/Element;)Lcom/paypal/android/b/a/c;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, v2, Lcom/paypal/android/b/a/h;->a:Lcom/paypal/android/b/a/c;

    :cond_1
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    const-string v7, "fundingSource"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v0}, Lcom/paypal/android/b/a/e;->a(Lorg/w3c/dom/Element;)Lcom/paypal/android/b/a/e;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, v2, Lcom/paypal/android/b/a/h;->b:Lcom/paypal/android/b/a/e;

    goto :goto_2

    :cond_3
    iget-object v0, v2, Lcom/paypal/android/b/a/h;->a:Lcom/paypal/android/b/a/c;

    if-eqz v0, :cond_4

    iget-object v0, v2, Lcom/paypal/android/b/a/h;->b:Lcom/paypal/android/b/a/e;

    if-nez v0, :cond_5

    :cond_4
    move-object v0, v1

    goto :goto_0

    :cond_5
    move-object v0, v2

    goto :goto_0
.end method
