.class public final Lcom/google/android/gms/internal/common/b;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.1.1"


# static fields
.field private static volatile a:Lcom/google/android/gms/internal/common/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/common/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/common/d;-><init>(Lcom/google/android/gms/internal/common/e;)V

    .line 2
    sput-object v0, Lcom/google/android/gms/internal/common/b;->a:Lcom/google/android/gms/internal/common/c;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/common/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/common/b;->a:Lcom/google/android/gms/internal/common/c;

    return-object v0
.end method
