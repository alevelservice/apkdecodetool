.class public final Lcom/google/android/gms/internal/ads/k51$a;
.super Lcom/google/android/gms/internal/ads/e91$a;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/qa1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/k51;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/e91$a<",
        "Lcom/google/android/gms/internal/ads/k51;",
        "Lcom/google/android/gms/internal/ads/k51$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/qa1;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/k51;->n()Lcom/google/android/gms/internal/ads/k51;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/e91$a;-><init>(Lcom/google/android/gms/internal/ads/e91;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/j51;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/k51$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/s41;)Lcom/google/android/gms/internal/ads/k51$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/e91$a;->g()V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e91$a;->f:Lcom/google/android/gms/internal/ads/e91;

    check-cast v0, Lcom/google/android/gms/internal/ads/k51;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/k51;->a(Lcom/google/android/gms/internal/ads/k51;Lcom/google/android/gms/internal/ads/s41;)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/k51$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/e91$a;->g()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e91$a;->f:Lcom/google/android/gms/internal/ads/e91;

    check-cast v0, Lcom/google/android/gms/internal/ads/k51;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/k51;->a(Lcom/google/android/gms/internal/ads/k51;Ljava/lang/String;)V

    return-object p0
.end method
