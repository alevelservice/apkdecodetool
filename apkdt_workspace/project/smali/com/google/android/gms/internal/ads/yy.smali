.class public final Lcom/google/android/gms/internal/ads/yy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/oe1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/oe1<",
        "Lcom/google/android/gms/internal/ads/ox<",
        "Lcom/google/android/gms/ads/internal/overlay/m;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/af1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/internal/ads/rz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/qy;Lcom/google/android/gms/internal/ads/af1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/qy;",
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/internal/ads/rz;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/yy;->a:Lcom/google/android/gms/internal/ads/af1;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/qy;Lcom/google/android/gms/internal/ads/af1;)Lcom/google/android/gms/internal/ads/yy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/qy;",
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/internal/ads/rz;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/yy;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/yy;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/yy;-><init>(Lcom/google/android/gms/internal/ads/qy;Lcom/google/android/gms/internal/ads/af1;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yy;->a:Lcom/google/android/gms/internal/ads/af1;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/af1;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/rz;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/ox;

    .line 3
    sget-object v2, Lcom/google/android/gms/internal/ads/yd;->e:Lcom/google/android/gms/internal/ads/tz0;

    .line 4
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/ox;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 5
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ue1;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/ox;

    return-object v1
.end method
