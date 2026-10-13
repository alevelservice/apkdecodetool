.class public abstract Lcom/google/android/gms/internal/vision/i8;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-vision-common@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static j:Ljava/lang/String; = "com.google.android.gms.vision.dynamite"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Z

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/i8;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/vision/i8;->g:Z

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/vision/i8;->h:Z

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/i8;->a:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/vision/i8;->c:Ljava/lang/String;

    .line 7
    sget-object p2, Lcom/google/android/gms/internal/vision/i8;->j:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/vision/i8;->d:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/vision/i8;->e:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/x;->b(Landroid/content/Context;)V

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/vision/g8;->a()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/vision/g8;->b()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "barcode"

    const-string v5, "face"

    const-string v7, "ica"

    const-string v9, "ocr"

    .line 12
    invoke-static/range {v3 .. v10}, Lcom/google/android/gms/internal/vision/x0;->zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/x0;

    move-result-object p1

    .line 13
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/vision/x0;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/vision/x0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 14
    :cond_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/vision/i8;->f:Z

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/google/android/gms/dynamite/DynamiteModule;Landroid/content/Context;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/dynamite/DynamiteModule;",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation
.end method

.method public final a()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/i8;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final b()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/i8;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/i8;->i:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/i8;->i:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :cond_0
    const/4 v1, 0x1

    .line 4
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/i8;->a:Landroid/content/Context;

    sget-object v3, Lcom/google/android/gms/dynamite/DynamiteModule;->l:Lcom/google/android/gms/dynamite/DynamiteModule$b;

    iget-object v4, p0, Lcom/google/android/gms/internal/vision/i8;->d:Ljava/lang/String;

    .line 5
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$b;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v2
    :try_end_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$a; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 6
    :catch_0
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/i8;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/vision/i8;->e:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/google/android/gms/internal/vision/i8;->f:Z

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/vision/k8;->a(Landroid/content/Context;Ljava/lang/String;Z)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v2

    if-nez v2, :cond_2

    .line 7
    iget-boolean v3, p0, Lcom/google/android/gms/internal/vision/i8;->f:Z

    if-eqz v3, :cond_2

    .line 8
    iget-boolean v3, p0, Lcom/google/android/gms/internal/vision/i8;->g:Z

    if-nez v3, :cond_2

    const-string v3, "Broadcasting download intent for dependency "

    .line 9
    iget-object v4, p0, Lcom/google/android/gms/internal/vision/i8;->e:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 10
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/vision/i8;->e:Ljava/lang/String;

    .line 11
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.google.android.gms"

    const-string v6, "com.google.android.gms.vision.DependencyBroadcastReceiverProxy"

    .line 12
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "com.google.android.gms.vision.DEPENDENCIES"

    .line 13
    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.google.android.gms.vision.DEPENDENCY"

    .line 14
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    iget-object v3, p0, Lcom/google/android/gms/internal/vision/i8;->a:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 16
    iput-boolean v1, p0, Lcom/google/android/gms/internal/vision/i8;->g:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 17
    :try_start_3
    iget-object v3, p0, Lcom/google/android/gms/internal/vision/i8;->a:Landroid/content/Context;

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/internal/vision/i8;->a(Lcom/google/android/gms/dynamite/DynamiteModule;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/vision/i8;->i:Ljava/lang/Object;
    :try_end_3
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$a; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 18
    :catch_1
    :cond_3
    :try_start_4
    iget-boolean v2, p0, Lcom/google/android/gms/internal/vision/i8;->h:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/vision/i8;->i:Ljava/lang/Object;

    if-nez v2, :cond_4

    .line 19
    iput-boolean v1, p0, Lcom/google/android/gms/internal/vision/i8;->h:Z

    goto :goto_2

    .line 20
    :cond_4
    iget-boolean v1, p0, Lcom/google/android/gms/internal/vision/i8;->h:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/i8;->i:Ljava/lang/Object;

    .line 21
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/i8;->i:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method
