.class public final Lcom/paypal/android/MEP/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/math/BigDecimal;

.field private c:Lcom/paypal/android/MEP/b;

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/paypal/android/MEP/c;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/paypal/android/MEP/c;->b:Ljava/math/BigDecimal;

    iput-object v1, p0, Lcom/paypal/android/MEP/c;->c:Lcom/paypal/android/MEP/b;

    const/4 v0, 0x3

    iput v0, p0, Lcom/paypal/android/MEP/c;->d:I

    const/16 v0, 0x16

    iput v0, p0, Lcom/paypal/android/MEP/c;->e:I

    iput-object v1, p0, Lcom/paypal/android/MEP/c;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/paypal/android/MEP/c;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/paypal/android/MEP/c;->h:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/paypal/android/MEP/c;->i:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/paypal/android/MEP/c;->d:I

    return-void
.end method

.method public final a(Lcom/paypal/android/MEP/b;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/c;->c:Lcom/paypal/android/MEP/b;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/c;->a:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/math/BigDecimal;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/MEP/c;->b:Ljava/math/BigDecimal;

    return-void
.end method

.method public final a(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/paypal/android/MEP/c;->i:Z

    return-void
.end method

.method public final b()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/c;->b:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/paypal/android/MEP/c;->e:I

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/c;->f:Ljava/lang/String;

    return-void
.end method

.method public final c()Lcom/paypal/android/MEP/b;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/c;->c:Lcom/paypal/android/MEP/b;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/c;->g:Ljava/lang/String;

    return-void
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/paypal/android/MEP/c;->d:I

    return v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/c;->h:Ljava/lang/String;

    return-void
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/paypal/android/MEP/c;->e:I

    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/paypal/android/MEP/c;->i:Z

    return v0
.end method

.method public final j()Z
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/c;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/paypal/android/b/d;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final k()Z
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/c;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/paypal/android/b/d;->e(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final l()Ljava/math/BigDecimal;
    .locals 2

    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/paypal/android/MEP/c;->b:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/MEP/c;->c:Lcom/paypal/android/MEP/b;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/paypal/android/MEP/c;->c:Lcom/paypal/android/MEP/b;

    invoke-virtual {v1}, Lcom/paypal/android/MEP/b;->a()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/paypal/android/MEP/c;->c:Lcom/paypal/android/MEP/b;

    invoke-virtual {v1}, Lcom/paypal/android/MEP/b;->a()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/paypal/android/MEP/c;->c:Lcom/paypal/android/MEP/b;

    invoke-virtual {v1}, Lcom/paypal/android/MEP/b;->b()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/paypal/android/MEP/c;->c:Lcom/paypal/android/MEP/b;

    invoke-virtual {v1}, Lcom/paypal/android/MEP/b;->b()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    :cond_1
    return-object v0
.end method
