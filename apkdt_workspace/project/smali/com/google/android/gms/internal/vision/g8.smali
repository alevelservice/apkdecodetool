.class public final Lcom/google/android/gms/internal/vision/g8;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-vision-common@@19.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/vision/k0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/vision/k0<",
        "Lcom/google/android/gms/internal/vision/f8;",
        ">;"
    }
.end annotation


# static fields
.field private static f:Lcom/google/android/gms/internal/vision/g8;


# instance fields
.field private final e:Lcom/google/android/gms/internal/vision/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/k0<",
            "Lcom/google/android/gms/internal/vision/f8;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/vision/g8;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/g8;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/g8;->f:Lcom/google/android/gms/internal/vision/g8;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/vision/h8;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/h8;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/vision/n0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/k0;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/g8;-><init>(Lcom/google/android/gms/internal/vision/k0;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/vision/k0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vision/k0<",
            "Lcom/google/android/gms/internal/vision/f8;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/n0;->a(Lcom/google/android/gms/internal/vision/k0;)Lcom/google/android/gms/internal/vision/k0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/g8;->e:Lcom/google/android/gms/internal/vision/k0;

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/g8;->f:Lcom/google/android/gms/internal/vision/g8;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/g8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/f8;

    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/f8;->zzjp()Z

    move-result v0

    return v0
.end method

.method public static b()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/g8;->f:Lcom/google/android/gms/internal/vision/g8;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/g8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/f8;

    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/f8;->zzjq()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/g8;->e:Lcom/google/android/gms/internal/vision/k0;

    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/k0;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/f8;

    return-object v0
.end method
