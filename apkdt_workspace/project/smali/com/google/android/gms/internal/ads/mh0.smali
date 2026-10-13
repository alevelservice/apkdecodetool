.class public final Lcom/google/android/gms/internal/ads/mh0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/oe1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Ljava/lang/Object;",
        "AdapterT:",
        "Ljava/lang/Object;",
        "ListenerT::Lcom/google/android/gms/internal/ads/nu;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/oe1<",
        "Lcom/google/android/gms/internal/ads/ih0<",
        "TAdT;TAdapterT;T",
        "ListenerT;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/af1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/internal/ads/zu0;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/af1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/internal/ads/tz0;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/af1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/internal/ads/ed0<",
            "TAdapterT;T",
            "ListenerT;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/ads/af1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/internal/ads/dd0<",
            "TAdT;TAdapterT;T",
            "ListenerT;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/af1;Lcom/google/android/gms/internal/ads/af1;Lcom/google/android/gms/internal/ads/af1;Lcom/google/android/gms/internal/ads/af1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/internal/ads/zu0;",
            ">;",
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/internal/ads/tz0;",
            ">;",
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/internal/ads/ed0<",
            "TAdapterT;T",
            "ListenerT;",
            ">;>;",
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/internal/ads/dd0<",
            "TAdT;TAdapterT;T",
            "ListenerT;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mh0;->a:Lcom/google/android/gms/internal/ads/af1;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/mh0;->b:Lcom/google/android/gms/internal/ads/af1;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/mh0;->c:Lcom/google/android/gms/internal/ads/af1;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/mh0;->d:Lcom/google/android/gms/internal/ads/af1;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/af1;Lcom/google/android/gms/internal/ads/af1;Lcom/google/android/gms/internal/ads/af1;Lcom/google/android/gms/internal/ads/af1;)Lcom/google/android/gms/internal/ads/mh0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<AdT:",
            "Ljava/lang/Object;",
            "AdapterT:",
            "Ljava/lang/Object;",
            "ListenerT::Lcom/google/android/gms/internal/ads/nu;",
            ">(",
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/internal/ads/zu0;",
            ">;",
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/internal/ads/tz0;",
            ">;",
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/internal/ads/ed0<",
            "TAdapterT;T",
            "ListenerT;",
            ">;>;",
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/internal/ads/dd0<",
            "TAdT;TAdapterT;T",
            "ListenerT;",
            ">;>;)",
            "Lcom/google/android/gms/internal/ads/mh0<",
            "TAdT;TAdapterT;T",
            "ListenerT;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/mh0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/mh0;-><init>(Lcom/google/android/gms/internal/ads/af1;Lcom/google/android/gms/internal/ads/af1;Lcom/google/android/gms/internal/ads/af1;Lcom/google/android/gms/internal/ads/af1;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/ih0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mh0;->a:Lcom/google/android/gms/internal/ads/af1;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/af1;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zu0;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/mh0;->b:Lcom/google/android/gms/internal/ads/af1;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/af1;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/tz0;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/mh0;->c:Lcom/google/android/gms/internal/ads/af1;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/af1;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/ed0;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/mh0;->d:Lcom/google/android/gms/internal/ads/af1;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/af1;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/dd0;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/ih0;-><init>(Lcom/google/android/gms/internal/ads/zu0;Lcom/google/android/gms/internal/ads/tz0;Lcom/google/android/gms/internal/ads/ed0;Lcom/google/android/gms/internal/ads/dd0;)V

    return-object v0
.end method
