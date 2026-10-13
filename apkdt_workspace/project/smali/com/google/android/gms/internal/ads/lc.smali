.class public final Lcom/google/android/gms/internal/ads/lc;
.super Lcom/google/android/gms/internal/ads/uq1;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/uq1<",
        "Lcom/google/android/gms/internal/ads/uo1;",
        ">;"
    }
.end annotation


# instance fields
.field private final r:Lcom/google/android/gms/internal/ads/he;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/he<",
            "Lcom/google/android/gms/internal/ads/uo1;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Lcom/google/android/gms/internal/ads/kd;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/he;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/he<",
            "Lcom/google/android/gms/internal/ads/uo1;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/lc;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/ads/he;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/ads/he;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/ads/he<",
            "Lcom/google/android/gms/internal/ads/uo1;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance p2, Lcom/google/android/gms/internal/ads/oc;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/oc;-><init>(Lcom/google/android/gms/internal/ads/he;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/uq1;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/iv1;)V

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/lc;->r:Lcom/google/android/gms/internal/ads/he;

    .line 4
    new-instance p2, Lcom/google/android/gms/internal/ads/kd;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/kd;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/lc;->s:Lcom/google/android/gms/internal/ads/kd;

    .line 5
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/lc;->s:Lcom/google/android/gms/internal/ads/kd;

    const/4 p3, 0x0

    const-string v0, "GET"

    invoke-virtual {p2, p1, v0, p3, p3}, Lcom/google/android/gms/internal/ads/kd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/internal/ads/uo1;)Lcom/google/android/gms/internal/ads/hw1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/uo1;",
            ")",
            "Lcom/google/android/gms/internal/ads/hw1<",
            "Lcom/google/android/gms/internal/ads/uo1;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/d8;->a(Lcom/google/android/gms/internal/ads/uo1;)Lcom/google/android/gms/internal/ads/zw0;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/hw1;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zw0;)Lcom/google/android/gms/internal/ads/hw1;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/uo1;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lc;->s:Lcom/google/android/gms/internal/ads/kd;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/uo1;->c:Ljava/util/Map;

    iget v2, p1, Lcom/google/android/gms/internal/ads/uo1;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/kd;->a(Ljava/util/Map;I)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lc;->s:Lcom/google/android/gms/internal/ads/kd;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/uo1;->b:[B

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/kd;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/kd;->a([B)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lc;->r:Lcom/google/android/gms/internal/ads/he;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/he;->b(Ljava/lang/Object;)Z

    return-void
.end method
