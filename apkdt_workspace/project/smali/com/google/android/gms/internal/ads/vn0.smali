.class final synthetic Lcom/google/android/gms/internal/ads/vn0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final e:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vn0;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vn0;->e:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/rn0;->b(Ljava/util/List;)Lcom/google/android/gms/internal/ads/sn0;

    move-result-object v0

    return-object v0
.end method
