.class public final Lcom/capcom/zombiecafeandroid/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/capcom/facebook/c;


# instance fields
.field private synthetic a:Lcom/capcom/zombiecafeandroid/CapcomFacebook;


# direct methods
.method public constructor <init>(Lcom/capcom/zombiecafeandroid/CapcomFacebook;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/zombiecafeandroid/i;->a:Lcom/capcom/zombiecafeandroid/CapcomFacebook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-string v0, "GeneralInfo"

    const-string v1, "IOException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CapcomFacebook Logon Info lenth="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/capcom/zombiecafeandroid/i;->a:Lcom/capcom/zombiecafeandroid/CapcomFacebook;

    const-string v2, "name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/capcom/zombiecafeandroid/i;->a:Lcom/capcom/zombiecafeandroid/CapcomFacebook;

    const-string v2, "first_name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->mFirstName:Ljava/lang/String;

    iget-object v1, p0, Lcom/capcom/zombiecafeandroid/i;->a:Lcom/capcom/zombiecafeandroid/CapcomFacebook;

    const-string v2, "last_name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->mLastName:Ljava/lang/String;

    iget-object v1, p0, Lcom/capcom/zombiecafeandroid/i;->a:Lcom/capcom/zombiecafeandroid/CapcomFacebook;

    const-string v2, "id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->mId:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Name ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/capcom/zombiecafeandroid/i;->a:Lcom/capcom/zombiecafeandroid/CapcomFacebook;

    iget-object v1, v1, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Grrr?"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/i;->a:Lcom/capcom/zombiecafeandroid/CapcomFacebook;

    iget-object v0, v0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/capcom/zombiecafeandroid/i;->a:Lcom/capcom/zombiecafeandroid/CapcomFacebook;

    iget-object v1, v1, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->mFirstName:Ljava/lang/String;

    iget-object v2, p0, Lcom/capcom/zombiecafeandroid/i;->a:Lcom/capcom/zombiecafeandroid/CapcomFacebook;

    iget-object v2, v2, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->mLastName:Ljava/lang/String;

    iget-object v3, p0, Lcom/capcom/zombiecafeandroid/i;->a:Lcom/capcom/zombiecafeandroid/CapcomFacebook;

    iget-object v3, v3, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->mId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->setFBInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "Facebook-Example"

    const-string v1, "JSON Error in response"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/i;->a:Lcom/capcom/zombiecafeandroid/CapcomFacebook;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->logout()V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    const-string v0, "GeneralInfo"

    const-string v1, "FileNotFound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final c()V
    .locals 2

    const-string v0, "GeneralInfo"

    const-string v1, "Malformed URL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
