.class public final Lcom/google/android/gms/internal/ads/ep0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ko0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/ko0<",
        "Lcom/google/android/gms/internal/ads/fp0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/x9;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Ljava/lang/String;

.field private final d:Landroid/content/pm/PackageInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/x9;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/content/pm/PackageInfo;)V
    .locals 0
    .param p4    # Landroid/content/pm/PackageInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ep0;->a:Lcom/google/android/gms/internal/ads/x9;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ep0;->b:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ep0;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ep0;->d:Landroid/content/pm/PackageInfo;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/qz0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "Lcom/google/android/gms/internal/ads/fp0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ep0;->a:Lcom/google/android/gms/internal/ads/x9;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ep0;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ep0;->d:Landroid/content/pm/PackageInfo;

    .line 2
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/x9;->a(Ljava/lang/String;Landroid/content/pm/PackageInfo;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/hp0;->a:Lcom/google/android/gms/internal/ads/pw0;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ep0;->b:Ljava/util/concurrent/Executor;

    .line 3
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/gz0;->a(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/pw0;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v0

    const-class v1, Ljava/lang/Throwable;

    new-instance v2, Lcom/google/android/gms/internal/ads/gp0;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/gp0;-><init>(Lcom/google/android/gms/internal/ads/ep0;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ep0;->b:Ljava/util/concurrent/Executor;

    .line 4
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/gz0;->a(Lcom/google/android/gms/internal/ads/qz0;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/qy0;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v0

    return-object v0
.end method

.method final synthetic a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/qz0;
    .locals 1

    .line 5
    new-instance p1, Lcom/google/android/gms/internal/ads/fp0;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ep0;->c:Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/fp0;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/gz0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    return-object p1
.end method
