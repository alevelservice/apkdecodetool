.class public final Lcom/google/android/gms/auth/a/a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@18.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/a/a$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/common/api/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$g<",
            "Lcom/google/android/gms/internal/auth-api/l;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/google/android/gms/common/api/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$g<",
            "Lcom/google/android/gms/auth/api/signin/internal/h;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$a<",
            "Lcom/google/android/gms/internal/auth-api/l;",
            "Lcom/google/android/gms/auth/a/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$a<",
            "Lcom/google/android/gms/auth/api/signin/internal/h;",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a<",
            "Lcom/google/android/gms/auth/a/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a<",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/a/a;->a:Lcom/google/android/gms/common/api/a$g;

    .line 2
    new-instance v0, Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/a/a;->b:Lcom/google/android/gms/common/api/a$g;

    .line 3
    new-instance v0, Lcom/google/android/gms/auth/a/e;

    invoke-direct {v0}, Lcom/google/android/gms/auth/a/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/a/a;->c:Lcom/google/android/gms/common/api/a$a;

    .line 4
    new-instance v0, Lcom/google/android/gms/auth/a/f;

    invoke-direct {v0}, Lcom/google/android/gms/auth/a/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/a/a;->d:Lcom/google/android/gms/common/api/a$a;

    .line 5
    sget-object v0, Lcom/google/android/gms/auth/a/b;->c:Lcom/google/android/gms/common/api/a;

    .line 6
    new-instance v0, Lcom/google/android/gms/common/api/a;

    sget-object v1, Lcom/google/android/gms/auth/a/a;->c:Lcom/google/android/gms/common/api/a$a;

    sget-object v2, Lcom/google/android/gms/auth/a/a;->a:Lcom/google/android/gms/common/api/a$g;

    const-string v3, "Auth.CREDENTIALS_API"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    sput-object v0, Lcom/google/android/gms/auth/a/a;->e:Lcom/google/android/gms/common/api/a;

    .line 7
    new-instance v0, Lcom/google/android/gms/common/api/a;

    sget-object v1, Lcom/google/android/gms/auth/a/a;->d:Lcom/google/android/gms/common/api/a$a;

    sget-object v2, Lcom/google/android/gms/auth/a/a;->b:Lcom/google/android/gms/common/api/a$g;

    const-string v3, "Auth.GOOGLE_SIGN_IN_API"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    sput-object v0, Lcom/google/android/gms/auth/a/a;->f:Lcom/google/android/gms/common/api/a;

    .line 8
    sget-object v0, Lcom/google/android/gms/auth/a/b;->d:Lcom/google/android/gms/auth/api/proxy/a;

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/auth-api/j;

    invoke-direct {v0}, Lcom/google/android/gms/internal/auth-api/j;-><init>()V

    .line 10
    new-instance v0, Lcom/google/android/gms/auth/api/signin/internal/e;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/signin/internal/e;-><init>()V

    return-void
.end method
