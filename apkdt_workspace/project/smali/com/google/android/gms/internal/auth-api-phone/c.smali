.class public final Lcom/google/android/gms/internal/auth-api-phone/c;
.super Lcom/google/android/gms/common/api/e;
.source "com.google.android.gms:play-services-auth-api-phone@@17.4.0"

# interfaces
.implements Lcom/google/android/gms/auth/api/phone/SmsCodeAutofillClient;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/e<",
        "Lcom/google/android/gms/common/api/a$d$d;",
        ">;",
        "Lcom/google/android/gms/auth/api/phone/SmsCodeAutofillClient;"
    }
.end annotation


# static fields
.field private static final j:Lcom/google/android/gms/common/api/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$g<",
            "Lcom/google/android/gms/internal/auth-api-phone/f;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$a<",
            "Lcom/google/android/gms/internal/auth-api-phone/f;",
            "Lcom/google/android/gms/common/api/a$d$d;",
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

    sput-object v0, Lcom/google/android/gms/internal/auth-api-phone/c;->j:Lcom/google/android/gms/common/api/a$g;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/auth-api-phone/d;

    invoke-direct {v0}, Lcom/google/android/gms/internal/auth-api-phone/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/auth-api-phone/c;->k:Lcom/google/android/gms/common/api/a$a;

    .line 3
    new-instance v0, Lcom/google/android/gms/common/api/a;

    sget-object v1, Lcom/google/android/gms/internal/auth-api-phone/c;->k:Lcom/google/android/gms/common/api/a$a;

    sget-object v2, Lcom/google/android/gms/internal/auth-api-phone/c;->j:Lcom/google/android/gms/common/api/a$g;

    const-string v3, "SmsCodeAutofill.API"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    return-void
.end method
