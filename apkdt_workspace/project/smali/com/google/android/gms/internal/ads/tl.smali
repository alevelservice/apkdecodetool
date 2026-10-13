.class final Lcom/google/android/gms/internal/ads/tl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/es0;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/bl;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/bl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tl;->c:Lcom/google/android/gms/internal/ads/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/bl;Lcom/google/android/gms/internal/ads/el;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/tl;-><init>(Lcom/google/android/gms/internal/ads/bl;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/es0;
    .locals 0

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ue1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tl;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final synthetic a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/es0;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tl;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final a()Lcom/google/android/gms/internal/ads/fs0;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tl;->a:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ue1;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/xl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tl;->c:Lcom/google/android/gms/internal/ads/bl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/tl;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/tl;->b:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/xl;-><init>(Lcom/google/android/gms/internal/ads/bl;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/el;)V

    return-object v0
.end method
