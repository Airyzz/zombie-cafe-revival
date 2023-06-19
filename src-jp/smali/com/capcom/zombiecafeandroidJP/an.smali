.class Lcom/capcom/zombiecafeandroidJP/an;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

.field private final synthetic b:F


# direct methods
.method constructor <init>(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;F)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/zombiecafeandroidJP/an;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iput p2, p0, Lcom/capcom/zombiecafeandroidJP/an;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/an;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v0, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->at:Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/an;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v0, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->aq:Lcom/capcom/zombiecafeandroidJP/ax;

    iget-object v0, v0, Lcom/capcom/zombiecafeandroidJP/ax;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/an;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v1, v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->aq:Lcom/capcom/zombiecafeandroidJP/ax;

    iget v1, v1, Lcom/capcom/zombiecafeandroidJP/ax;->m:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/an;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v1, v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->au:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/an;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v1, v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->at:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/an;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v0, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->at:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v4, v4}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/capcom/zombiecafeandroidJP/an;->b:F

    const/high16 v1, 0x41800000    # 16.0f

    div-float/2addr v0, v1

    sget v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->o:I

    int-to-float v1, v1

    const/high16 v2, 0x44700000    # 960.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/capcom/zombiecafeandroidJP/an;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v2, v2, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->at:Landroid/widget/HorizontalScrollView;

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v0, v3

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v2, v0, v4}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    goto :goto_0
.end method
