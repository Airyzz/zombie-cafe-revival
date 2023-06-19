.class public Lcom/paypal/android/MEP/PayPalPreapproval;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DAY_FRIDAY:I = 0x5

.field public static final DAY_MONDAY:I = 0x1

.field public static final DAY_NONE:I = 0x7

.field public static final DAY_SATURDAY:I = 0x6

.field public static final DAY_SUNDAY:I = 0x0

.field public static final DAY_THURSDAY:I = 0x4

.field public static final DAY_TUESDAY:I = 0x2

.field public static final DAY_WEDNESDAY:I = 0x3

.field public static final PERIOD_ANNUALLY:I = 0x5

.field public static final PERIOD_BIWEEKLY:I = 0x2

.field public static final PERIOD_DAILY:I = 0x0

.field public static final PERIOD_MONTHLY:I = 0x4

.field public static final PERIOD_NONE:I = 0x6

.field public static final PERIOD_SEMIMONTHLY:I = 0x3

.field public static final PERIOD_WEEKLY:I = 0x1

.field public static final TYPE_AGREE:I = 0x0

.field public static final TYPE_AGREE_AND_PAY:I = 0x1


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/math/BigDecimal;

.field private e:Ljava/math/BigDecimal;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/paypal/android/MEP/PayPalPreapproval;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/paypal/android/MEP/PayPalPreapproval;->b:Ljava/lang/String;

    iput v2, p0, Lcom/paypal/android/MEP/PayPalPreapproval;->c:I

    iput-object v1, p0, Lcom/paypal/android/MEP/PayPalPreapproval;->d:Ljava/math/BigDecimal;

    iput-object v1, p0, Lcom/paypal/android/MEP/PayPalPreapproval;->e:Ljava/math/BigDecimal;

    iput-object v1, p0, Lcom/paypal/android/MEP/PayPalPreapproval;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/paypal/android/MEP/PayPalPreapproval;->g:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/paypal/android/MEP/PayPalPreapproval;->h:Z

    iput-boolean v2, p0, Lcom/paypal/android/MEP/PayPalPreapproval;->i:Z

    const/4 v0, 0x6

    iput v0, p0, Lcom/paypal/android/MEP/PayPalPreapproval;->j:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/paypal/android/MEP/PayPalPreapproval;->k:I

    iput v2, p0, Lcom/paypal/android/MEP/PayPalPreapproval;->l:I

    iput v2, p0, Lcom/paypal/android/MEP/PayPalPreapproval;->m:I

    iput-object v1, p0, Lcom/paypal/android/MEP/PayPalPreapproval;->n:Ljava/lang/String;

    iput-object v1, p0, Lcom/paypal/android/MEP/PayPalPreapproval;->o:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/paypal/android/MEP/PayPalPreapproval;->p:I

    return-void
.end method


# virtual methods
.method public getCurrencyType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalPreapproval;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getDayOfMonth()I
    .locals 1

    iget v0, p0, Lcom/paypal/android/MEP/PayPalPreapproval;->l:I

    return v0
.end method

.method public getDayOfWeek()I
    .locals 1

    iget v0, p0, Lcom/paypal/android/MEP/PayPalPreapproval;->k:I

    return v0
.end method

.method public getDayOfWeekInt(Ljava/lang/String;)I
    .locals 1

    const-string v0, "SUNDAY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "MONDAY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "TUESDAY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const-string v0, "WEDNESDAY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const-string v0, "THURSDAY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    :cond_4
    const-string v0, "FRIDAY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    goto :goto_0

    :cond_5
    const-string v0, "SATURDAY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x6

    goto :goto_0

    :cond_6
    const/4 v0, 0x7

    goto :goto_0
.end method

.method public getEndDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalPreapproval;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getIpnUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalPreapproval;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getIsApproved()Z
    .locals 1

    iget-boolean v0, p0, Lcom/paypal/android/MEP/PayPalPreapproval;->h:Z

    return v0
.end method

.method public getMaxAmountPerPayment()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalPreapproval;->d:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getMaxNumberOfPayments()I
    .locals 1

    iget v0, p0, Lcom/paypal/android/MEP/PayPalPreapproval;->c:I

    return v0
.end method

.method public getMaxNumberOfPaymentsPerPeriod()I
    .locals 1

    iget v0, p0, Lcom/paypal/android/MEP/PayPalPreapproval;->m:I

    return v0
.end method

.method public getMaxTotalAmountOfAllPayments()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalPreapproval;->e:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalPreapproval;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalPreapproval;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentPeriod()I
    .locals 1

    iget v0, p0, Lcom/paypal/android/MEP/PayPalPreapproval;->j:I

    return v0
.end method

.method public getPaymentPeriodInt(Ljava/lang/String;)I
    .locals 1

    const-string v0, "DAILY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "WEEKLY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "BIWEEKLY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const-string v0, "SEMIMONTHLY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const-string v0, "MONTHLY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    :cond_4
    const-string v0, "ANNUALLY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    goto :goto_0

    :cond_5
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public getPinRequired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/paypal/android/MEP/PayPalPreapproval;->i:Z

    return v0
.end method

.method public getStartDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalPreapproval;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/paypal/android/MEP/PayPalPreapproval;->p:I

    return v0
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalPreapproval;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalPreapproval;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setCurrencyType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/PayPalPreapproval;->a:Ljava/lang/String;

    return-void
.end method

.method public setDayOfMonth(I)V
    .locals 0

    iput p1, p0, Lcom/paypal/android/MEP/PayPalPreapproval;->l:I

    return-void
.end method

.method public setDayOfWeek(I)V
    .locals 0

    iput p1, p0, Lcom/paypal/android/MEP/PayPalPreapproval;->k:I

    return-void
.end method

.method public setEndDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/PayPalPreapproval;->g:Ljava/lang/String;

    return-void
.end method

.method public setIpnUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/PayPalPreapproval;->n:Ljava/lang/String;

    return-void
.end method

.method public setIsApproved(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/paypal/android/MEP/PayPalPreapproval;->h:Z

    return-void
.end method

.method public setMaxAmountPerPayment(Ljava/math/BigDecimal;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/PayPalPreapproval;->d:Ljava/math/BigDecimal;

    return-void
.end method

.method public setMaxNumberOfPayments(I)V
    .locals 0

    iput p1, p0, Lcom/paypal/android/MEP/PayPalPreapproval;->c:I

    return-void
.end method

.method public setMaxNumberOfPaymentsPerPeriod(I)V
    .locals 0

    iput p1, p0, Lcom/paypal/android/MEP/PayPalPreapproval;->m:I

    return-void
.end method

.method public setMaxTotalAmountOfAllPayments(Ljava/math/BigDecimal;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/PayPalPreapproval;->e:Ljava/math/BigDecimal;

    return-void
.end method

.method public setMemo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/PayPalPreapproval;->o:Ljava/lang/String;

    return-void
.end method

.method public setMerchantName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/PayPalPreapproval;->b:Ljava/lang/String;

    return-void
.end method

.method public setPaymentPeriod(I)V
    .locals 0

    iput p1, p0, Lcom/paypal/android/MEP/PayPalPreapproval;->j:I

    return-void
.end method

.method public setPinRequired(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/paypal/android/MEP/PayPalPreapproval;->i:Z

    return-void
.end method

.method public setStartDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/PayPalPreapproval;->f:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/paypal/android/MEP/PayPalPreapproval;->p:I

    goto :goto_0
.end method
