.class Lcom/capcom/zombiecafeandroidJP/au;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;


# direct methods
.method constructor <init>(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/zombiecafeandroidJP/au;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/au;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/au;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    const v2, 0x7f0b0021

    invoke-virtual {v1, v2}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/capcom/zombiecafeandroidJP/au;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    const v3, 0x7f0b0023

    invoke-virtual {v2, v3}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iget-object v3, p0, Lcom/capcom/zombiecafeandroidJP/au;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    const v6, 0x7f0b0025

    invoke-virtual {v3, v6}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    new-array v6, v7, [Ljava/lang/String;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v5

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v4

    const/4 v0, 0x2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    move v1, v5

    move v0, v5

    :goto_0
    if-lt v1, v7, :cond_0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/au;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6b63\u3057\u3044\u6587\u5b57\u3092\u5165\u529b\u3057\u3066\u304f\u3060\u3055\u3044"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void

    :cond_0
    aget-object v2, v6, v1

    if-eqz v2, :cond_1

    aget-object v2, v6, v1

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v0, v4

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v4, v6}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->enterMigrationPassword(Z[Ljava/lang/String;)V

    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$1()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/au;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v1, v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->aw:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/au;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ax:Ljava/lang/Boolean;

    goto :goto_1
.end method
