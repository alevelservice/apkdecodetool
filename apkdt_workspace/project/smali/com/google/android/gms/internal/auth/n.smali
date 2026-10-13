.class public final Lcom/google/android/gms/internal/auth/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/auth/account/a;


# static fields
.field private static final a:Lcom/google/android/gms/common/api/Status;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/auth/n;->a:Lcom/google/android/gms/common/api/Status;

    return-void
.end method

.method static synthetic a()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/auth/n;->a:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
