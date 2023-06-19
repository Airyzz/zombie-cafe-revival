.class Lcom/capcom/zombiecafeandroid/InputObject;
.super Ljava/lang/Object;


# static fields
.field public static final ACTION_KEY_DOWN:I = 0x1

.field public static final ACTION_KEY_UP:I = 0x2

.field public static final ACTION_TOUCH_DOWN:I = 0x3

.field public static final ACTION_TOUCH_MOVE:I = 0x4

.field public static final ACTION_TOUCH_UP:I = 0x5

.field public static final EVENT_TYPE_KEY:B = 0x1t

.field public static final EVENT_TYPE_TOUCH:B = 0x2t


# instance fields
.field public action:I

.field public eventType:B

.field public keyCode:I

.field public pool:Ljava/util/concurrent/ArrayBlockingQueue;

.field public time:J

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ArrayBlockingQueue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/capcom/zombiecafeandroid/InputObject;->pool:Ljava/util/concurrent/ArrayBlockingQueue;

    return-void
.end method


# virtual methods
.method public returnToPool()V
    .locals 1

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/InputObject;->pool:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public useEvent(Landroid/view/MotionEvent;)V
    .locals 2

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/capcom/zombiecafeandroid/InputObject;->eventType:B

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/capcom/zombiecafeandroid/InputObject;->action:I

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/capcom/zombiecafeandroid/InputObject;->action:I

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/capcom/zombiecafeandroid/InputObject;->time:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/capcom/zombiecafeandroid/InputObject;->x:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/capcom/zombiecafeandroid/InputObject;->y:I

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x4

    iput v0, p0, Lcom/capcom/zombiecafeandroid/InputObject;->action:I

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x5

    iput v0, p0, Lcom/capcom/zombiecafeandroid/InputObject;->action:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
