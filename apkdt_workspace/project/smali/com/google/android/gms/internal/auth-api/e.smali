.class public final Lcom/google/android/gms/internal/auth-api/e;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@18.0.0"


# static fields
.field public static final a:Lcom/google/android/gms/common/Feature;

.field public static final b:Lcom/google/android/gms/common/Feature;

.field private static final c:Lcom/google/android/gms/common/Feature;

.field private static final d:Lcom/google/android/gms/common/Feature;

.field private static final e:Lcom/google/android/gms/common/Feature;

.field private static final f:Lcom/google/android/gms/common/Feature;

.field private static final g:Lcom/google/android/gms/common/Feature;

.field public static final h:[Lcom/google/android/gms/common/Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-wide/16 v1, 0x2

    const-string v3, "auth_api_credentials_begin_sign_in"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/internal/auth-api/e;->a:Lcom/google/android/gms/common/Feature;

    .line 2
    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v3, "auth_api_credentials_sign_out"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/internal/auth-api/e;->b:Lcom/google/android/gms/common/Feature;

    .line 3
    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-wide/16 v3, 0x1

    const-string v5, "auth_api_credentials_authorize"

    invoke-direct {v0, v5, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/internal/auth-api/e;->c:Lcom/google/android/gms/common/Feature;

    .line 4
    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v5, "auth_api_credentials_revoke_access"

    invoke-direct {v0, v5, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/internal/auth-api/e;->d:Lcom/google/android/gms/common/Feature;

    .line 5
    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v5, "auth_api_credentials_save_password"

    invoke-direct {v0, v5, v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/internal/auth-api/e;->e:Lcom/google/android/gms/common/Feature;

    .line 6
    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v5, "auth_api_credentials_get_sign_in_intent"

    invoke-direct {v0, v5, v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/internal/auth-api/e;->f:Lcom/google/android/gms/common/Feature;

    .line 7
    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v1, "auth_api_credentials_save_account_linking_token"

    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/internal/auth-api/e;->g:Lcom/google/android/gms/common/Feature;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/android/gms/common/Feature;

    .line 8
    sget-object v1, Lcom/google/android/gms/internal/auth-api/e;->a:Lcom/google/android/gms/common/Feature;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/auth-api/e;->b:Lcom/google/android/gms/common/Feature;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/auth-api/e;->c:Lcom/google/android/gms/common/Feature;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/auth-api/e;->d:Lcom/google/android/gms/common/Feature;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/auth-api/e;->e:Lcom/google/android/gms/common/Feature;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/auth-api/e;->f:Lcom/google/android/gms/common/Feature;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/auth-api/e;->g:Lcom/google/android/gms/common/Feature;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gms/internal/auth-api/e;->h:[Lcom/google/android/gms/common/Feature;

    return-void
.end method
