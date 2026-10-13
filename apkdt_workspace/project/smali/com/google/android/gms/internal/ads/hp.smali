.class public final Lcom/google/android/gms/internal/ads/hp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/oe1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/oe1<",
        "Lcom/google/android/gms/internal/ads/uo;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/yo;

.field private final b:Lcom/google/android/gms/internal/ads/af1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/internal/ads/xo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/yo;Lcom/google/android/gms/internal/ads/af1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/yo;",
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/internal/ads/xo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hp;->a:Lcom/google/android/gms/internal/ads/yo;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/hp;->b:Lcom/google/android/gms/internal/ads/af1;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/yo;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/uo;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/xo;

    const-string p0, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/ue1;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/uo;

    return-object p1
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hp;->a:Lcom/google/android/gms/internal/ads/yo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hp;->b:Lcom/google/android/gms/internal/ads/af1;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/af1;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/hp;->a(Lcom/google/android/gms/internal/ads/yo;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/uo;

    move-result-object v0

    return-object v0
.end method
