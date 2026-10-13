.class public final Lcom/google/android/gms/internal/ads/ks;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/oe1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/oe1<",
        "Lcom/google/android/gms/ads/internal/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/af1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/af1<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/af1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/internal/ads/t8;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/hs;Lcom/google/android/gms/internal/ads/af1;Lcom/google/android/gms/internal/ads/af1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/hs;",
            "Lcom/google/android/gms/internal/ads/af1<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/internal/ads/t8;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ks;->a:Lcom/google/android/gms/internal/ads/af1;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ks;->b:Lcom/google/android/gms/internal/ads/af1;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/hs;Lcom/google/android/gms/internal/ads/af1;Lcom/google/android/gms/internal/ads/af1;)Lcom/google/android/gms/internal/ads/ks;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/hs;",
            "Lcom/google/android/gms/internal/ads/af1<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/internal/ads/t8;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/ks;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/ks;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/ks;-><init>(Lcom/google/android/gms/internal/ads/hs;Lcom/google/android/gms/internal/ads/af1;Lcom/google/android/gms/internal/ads/af1;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ks;->a:Lcom/google/android/gms/internal/ads/af1;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/af1;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ks;->b:Lcom/google/android/gms/internal/ads/af1;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/af1;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/t8;

    .line 2
    new-instance v2, Lcom/google/android/gms/ads/internal/a;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/google/android/gms/ads/internal/a;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/t8;Lcom/google/android/gms/internal/ads/zzanz;)V

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 3
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/ue1;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/ads/internal/a;

    return-object v2
.end method
