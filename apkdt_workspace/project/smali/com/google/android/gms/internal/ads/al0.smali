.class public final Lcom/google/android/gms/internal/ads/al0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ko0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/ko0<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/internal/ads/yr;

.field private final d:Lcom/google/android/gms/internal/ads/kt0;

.field private final e:Lcom/google/android/gms/internal/ads/ws0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/al0;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/yr;Lcom/google/android/gms/internal/ads/kt0;Lcom/google/android/gms/internal/ads/ws0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/al0;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/al0;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/al0;->c:Lcom/google/android/gms/internal/ads/yr;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/al0;->d:Lcom/google/android/gms/internal/ads/kt0;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/al0;->e:Lcom/google/android/gms/internal/ads/ws0;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/qz0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/aw1;->d3:Lcom/google/android/gms/internal/ads/pv1;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/al0;->c:Lcom/google/android/gms/internal/ads/yr;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/al0;->e:Lcom/google/android/gms/internal/ads/ws0;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/ws0;->d:Lcom/google/android/gms/internal/ads/zztp;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/yr;->a(Lcom/google/android/gms/internal/ads/zztp;)V

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/al0;->d:Lcom/google/android/gms/internal/ads/kt0;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/kt0;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 7
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/dl0;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/dl0;-><init>(Lcom/google/android/gms/internal/ads/al0;Landroid/os/Bundle;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/gz0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v0

    return-object v0
.end method

.method final synthetic a(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/aw1;->d3:Lcom/google/android/gms/internal/ads/pv1;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "quality_signals"

    .line 11
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 12
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/aw1;->c3:Lcom/google/android/gms/internal/ads/pv1;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 15
    sget-object p1, Lcom/google/android/gms/internal/ads/al0;->f:Ljava/lang/Object;

    monitor-enter p1

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/al0;->c:Lcom/google/android/gms/internal/ads/yr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/al0;->e:Lcom/google/android/gms/internal/ads/ws0;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/ws0;->d:Lcom/google/android/gms/internal/ads/zztp;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yr;->a(Lcom/google/android/gms/internal/ads/zztp;)V

    const-string v0, "quality_signals"

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/al0;->d:Lcom/google/android/gms/internal/ads/kt0;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/kt0;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 18
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 19
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/al0;->c:Lcom/google/android/gms/internal/ads/yr;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/al0;->e:Lcom/google/android/gms/internal/ads/ws0;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ws0;->d:Lcom/google/android/gms/internal/ads/zztp;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/yr;->a(Lcom/google/android/gms/internal/ads/zztp;)V

    .line 20
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/al0;->d:Lcom/google/android/gms/internal/ads/kt0;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/kt0;->a()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "quality_signals"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 21
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/al0;->a:Ljava/lang/String;

    const-string v0, "seq_num"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/al0;->b:Ljava/lang/String;

    const-string v0, "session_id"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
