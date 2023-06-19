.class Lcom/capcom/zombiecafeandroidJP/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:J

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F


# direct methods
.method constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/capcom/zombiecafeandroidJP/c;->a:J

    iput-wide v2, p0, Lcom/capcom/zombiecafeandroidJP/c;->b:J

    iput-wide v2, p0, Lcom/capcom/zombiecafeandroidJP/c;->c:J

    iput-wide v2, p0, Lcom/capcom/zombiecafeandroidJP/c;->d:J

    iput v0, p0, Lcom/capcom/zombiecafeandroidJP/c;->e:F

    iput v0, p0, Lcom/capcom/zombiecafeandroidJP/c;->f:F

    iput v0, p0, Lcom/capcom/zombiecafeandroidJP/c;->g:F

    iput v0, p0, Lcom/capcom/zombiecafeandroidJP/c;->h:F

    iput v0, p0, Lcom/capcom/zombiecafeandroidJP/c;->i:F

    iput v0, p0, Lcom/capcom/zombiecafeandroidJP/c;->j:F

    iput v0, p0, Lcom/capcom/zombiecafeandroidJP/c;->k:F

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    const-wide/16 v4, 0x0

    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v0, p0, Lcom/capcom/zombiecafeandroidJP/c;->a:J

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/capcom/zombiecafeandroidJP/c;->e:F

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/capcom/zombiecafeandroidJP/c;->f:F

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, Lcom/capcom/zombiecafeandroidJP/c;->g:F

    iget-wide v0, p0, Lcom/capcom/zombiecafeandroidJP/c;->c:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/capcom/zombiecafeandroidJP/c;->a:J

    iput-wide v0, p0, Lcom/capcom/zombiecafeandroidJP/c;->c:J

    iget-wide v0, p0, Lcom/capcom/zombiecafeandroidJP/c;->a:J

    iput-wide v0, p0, Lcom/capcom/zombiecafeandroidJP/c;->d:J

    iget v0, p0, Lcom/capcom/zombiecafeandroidJP/c;->e:F

    iput v0, p0, Lcom/capcom/zombiecafeandroidJP/c;->h:F

    iget v0, p0, Lcom/capcom/zombiecafeandroidJP/c;->f:F

    iput v0, p0, Lcom/capcom/zombiecafeandroidJP/c;->i:F

    iget v0, p0, Lcom/capcom/zombiecafeandroidJP/c;->g:F

    iput v0, p0, Lcom/capcom/zombiecafeandroidJP/c;->j:F

    :cond_0
    :goto_0
    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/b;->f()Lcom/capcom/zombiecafeandroidJP/a;

    move-result-object v0

    iget v1, p0, Lcom/capcom/zombiecafeandroidJP/c;->e:F

    iget v2, p0, Lcom/capcom/zombiecafeandroidJP/c;->f:F

    iget v3, p0, Lcom/capcom/zombiecafeandroidJP/c;->g:F

    invoke-interface {v0, v1, v2, v3}, Lcom/capcom/zombiecafeandroidJP/a;->onAccelerationChanged(FFF)V

    return-void

    :cond_1
    iget-wide v0, p0, Lcom/capcom/zombiecafeandroidJP/c;->a:J

    iget-wide v2, p0, Lcom/capcom/zombiecafeandroidJP/c;->c:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/capcom/zombiecafeandroidJP/c;->b:J

    iget-wide v0, p0, Lcom/capcom/zombiecafeandroidJP/c;->b:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    iget v0, p0, Lcom/capcom/zombiecafeandroidJP/c;->e:F

    iget v1, p0, Lcom/capcom/zombiecafeandroidJP/c;->f:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/capcom/zombiecafeandroidJP/c;->g:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/capcom/zombiecafeandroidJP/c;->h:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/capcom/zombiecafeandroidJP/c;->i:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/capcom/zombiecafeandroidJP/c;->j:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-wide v2, p0, Lcom/capcom/zombiecafeandroidJP/c;->b:J

    long-to-float v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/capcom/zombiecafeandroidJP/c;->k:F

    iget v0, p0, Lcom/capcom/zombiecafeandroidJP/c;->k:F

    const v1, 0x49742400    # 1000000.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/capcom/zombiecafeandroidJP/c;->k:F

    iget v0, p0, Lcom/capcom/zombiecafeandroidJP/c;->k:F

    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/b;->d()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget-wide v0, p0, Lcom/capcom/zombiecafeandroidJP/c;->a:J

    iget-wide v2, p0, Lcom/capcom/zombiecafeandroidJP/c;->d:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x186a0

    div-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/b;->e()I

    move-result v1

    if-lt v0, v1, :cond_2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "shake event"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/b;->f()Lcom/capcom/zombiecafeandroidJP/a;

    move-result-object v0

    iget v1, p0, Lcom/capcom/zombiecafeandroidJP/c;->k:F

    invoke-interface {v0, v1}, Lcom/capcom/zombiecafeandroidJP/a;->onShake(F)V

    :cond_2
    iget-wide v0, p0, Lcom/capcom/zombiecafeandroidJP/c;->a:J

    iput-wide v0, p0, Lcom/capcom/zombiecafeandroidJP/c;->d:J

    :cond_3
    iget v0, p0, Lcom/capcom/zombiecafeandroidJP/c;->e:F

    iput v0, p0, Lcom/capcom/zombiecafeandroidJP/c;->h:F

    iget v0, p0, Lcom/capcom/zombiecafeandroidJP/c;->f:F

    iput v0, p0, Lcom/capcom/zombiecafeandroidJP/c;->i:F

    iget v0, p0, Lcom/capcom/zombiecafeandroidJP/c;->g:F

    iput v0, p0, Lcom/capcom/zombiecafeandroidJP/c;->j:F

    iget-wide v0, p0, Lcom/capcom/zombiecafeandroidJP/c;->a:J

    iput-wide v0, p0, Lcom/capcom/zombiecafeandroidJP/c;->c:J

    goto :goto_0
.end method
