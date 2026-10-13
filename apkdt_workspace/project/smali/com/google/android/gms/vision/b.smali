.class public abstract Lcom/google/android/gms/vision/b;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-vision-common@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/vision/b$b;,
        Lcom/google/android/gms/vision/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcom/google/android/gms/vision/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/vision/b$b<",
            "TT;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "processorLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/vision/b;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/android/gms/vision/c;)Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/vision/c;",
            ")",
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation
.end method

.method public a(Lcom/google/android/gms/vision/b$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/vision/b$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/vision/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/vision/b;->b:Lcom/google/android/gms/vision/b$b;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/vision/b;->b:Lcom/google/android/gms/vision/b$b;

    invoke-interface {v1}, Lcom/google/android/gms/vision/b$b;->a()V

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/vision/b;->b:Lcom/google/android/gms/vision/b$b;

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public abstract a()Z
.end method

.method public b(Lcom/google/android/gms/vision/c;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/vision/c$b;

    invoke-virtual {p1}, Lcom/google/android/gms/vision/c;->c()Lcom/google/android/gms/vision/c$b;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/vision/c$b;-><init>(Lcom/google/android/gms/vision/c$b;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/vision/c$b;->f()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/vision/b;->a(Lcom/google/android/gms/vision/c;)Landroid/util/SparseArray;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/vision/b;->a()Z

    move-result v1

    .line 5
    new-instance v2, Lcom/google/android/gms/vision/b$a;

    invoke-direct {v2, p1, v0, v1}, Lcom/google/android/gms/vision/b$a;-><init>(Landroid/util/SparseArray;Lcom/google/android/gms/vision/c$b;Z)V

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/vision/b;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/vision/b;->b:Lcom/google/android/gms/vision/b$b;

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/vision/b;->b:Lcom/google/android/gms/vision/b$b;

    invoke-interface {v0, v2}, Lcom/google/android/gms/vision/b$b;->a(Lcom/google/android/gms/vision/b$a;)V

    .line 9
    monitor-exit p1

    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Detector processor must first be set with setProcessor in order to receive detection results."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
