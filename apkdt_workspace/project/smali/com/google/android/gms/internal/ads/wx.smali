.class public final Lcom/google/android/gms/internal/ads/wx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/tx;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/iv0;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ns0;Lcom/google/android/gms/internal/ads/iv0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ns0;->n:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wx;->a:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/wx;->b:Lcom/google/android/gms/internal/ads/iv0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/wx;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wx;->b:Lcom/google/android/gms/internal/ads/iv0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wx;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/iv0;->a(Ljava/util/List;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/wx;->c:Z

    :cond_0
    return-void
.end method
