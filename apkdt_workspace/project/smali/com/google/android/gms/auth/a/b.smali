.class public final Lcom/google/android/gms/auth/a/b;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/common/api/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$g<",
            "Lcom/google/android/gms/internal/auth/e;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$a<",
            "Lcom/google/android/gms/internal/auth/e;",
            "Lcom/google/android/gms/auth/a/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/google/android/gms/common/api/a;
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a<",
            "Lcom/google/android/gms/auth/a/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lcom/google/android/gms/auth/api/proxy/a;
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/a/b;->a:Lcom/google/android/gms/common/api/a$g;

    .line 2
    new-instance v0, Lcom/google/android/gms/auth/a/d;

    invoke-direct {v0}, Lcom/google/android/gms/auth/a/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/a/b;->b:Lcom/google/android/gms/common/api/a$a;

    .line 3
    new-instance v0, Lcom/google/android/gms/common/api/a;

    sget-object v1, Lcom/google/android/gms/auth/a/b;->b:Lcom/google/android/gms/common/api/a$a;

    sget-object v2, Lcom/google/android/gms/auth/a/b;->a:Lcom/google/android/gms/common/api/a$g;

    const-string v3, "Auth.PROXY_API"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    sput-object v0, Lcom/google/android/gms/auth/a/b;->c:Lcom/google/android/gms/common/api/a;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/auth/h;

    invoke-direct {v0}, Lcom/google/android/gms/internal/auth/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/a/b;->d:Lcom/google/android/gms/auth/api/proxy/a;

    return-void
.end method
