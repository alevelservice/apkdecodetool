.class public abstract Lcom/google/android/gms/internal/ads/ma0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/qy0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/qy0<",
        "Lcom/google/android/gms/internal/ads/zzaok;",
        "Lcom/google/android/gms/internal/ads/vs0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/rv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/rv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ma0;->a:Lcom/google/android/gms/internal/ads/rv;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/ma0;)Lcom/google/android/gms/internal/ads/rv;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ma0;->a:Lcom/google/android/gms/internal/ads/rv;

    return-object p0
.end method


# virtual methods
.method protected abstract a(Lcom/google/android/gms/internal/ads/zzaok;)Lcom/google/android/gms/internal/ads/qz0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzaok;",
            ")",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "Lcom/google/android/gms/internal/ads/vs0;",
            ">;"
        }
    .end annotation
.end method

.method public final synthetic b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzaok;

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ma0;->a:Lcom/google/android/gms/internal/ads/rv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/rv;->a(Lcom/google/android/gms/internal/ads/zzaok;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ma0;->a(Lcom/google/android/gms/internal/ads/zzaok;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/qa0;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/qa0;-><init>(Lcom/google/android/gms/internal/ads/ma0;)V

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/ads/yd;->e:Lcom/google/android/gms/internal/ads/tz0;

    .line 6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/gz0;->a(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/hz0;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method
