.class public final Lcom/google/android/gms/internal/ads/un;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/oe1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/oe1<",
        "Lcom/google/android/gms/internal/ads/hn;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/af1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/internal/ads/zp1;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/af1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/internal/ads/l4;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/af1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/af1<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/af1;Lcom/google/android/gms/internal/ads/af1;Lcom/google/android/gms/internal/ads/af1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/internal/ads/zp1;",
            ">;",
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/internal/ads/l4;",
            ">;",
            "Lcom/google/android/gms/internal/ads/af1<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/un;->a:Lcom/google/android/gms/internal/ads/af1;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/un;->b:Lcom/google/android/gms/internal/ads/af1;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/un;->c:Lcom/google/android/gms/internal/ads/af1;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/af1;Lcom/google/android/gms/internal/ads/af1;Lcom/google/android/gms/internal/ads/af1;)Lcom/google/android/gms/internal/ads/un;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/internal/ads/zp1;",
            ">;",
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/internal/ads/l4;",
            ">;",
            "Lcom/google/android/gms/internal/ads/af1<",
            "Ljava/util/concurrent/Executor;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/un;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/un;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/un;-><init>(Lcom/google/android/gms/internal/ads/af1;Lcom/google/android/gms/internal/ads/af1;Lcom/google/android/gms/internal/ads/af1;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/un;->a:Lcom/google/android/gms/internal/ads/af1;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/af1;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zp1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/un;->b:Lcom/google/android/gms/internal/ads/af1;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/af1;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/l4;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/un;->c:Lcom/google/android/gms/internal/ads/af1;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/af1;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    .line 2
    new-instance v3, Lcom/google/android/gms/internal/ads/hn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zp1;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/hn;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/l4;Ljava/util/concurrent/Executor;)V

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 3
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/ue1;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/hn;

    return-object v3
.end method
