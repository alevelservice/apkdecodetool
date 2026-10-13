.class public final enum Lcom/google/android/gms/ads/n/a$a;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/n/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/ads/n/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum NOT_READY:Lcom/google/android/gms/ads/n/a$a;

.field public static final enum READY:Lcom/google/android/gms/ads/n/a$a;

.field private static final synthetic e:[Lcom/google/android/gms/ads/n/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/n/a$a;

    const/4 v1, 0x0

    const-string v2, "NOT_READY"

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/ads/n/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/ads/n/a$a;->NOT_READY:Lcom/google/android/gms/ads/n/a$a;

    .line 2
    new-instance v0, Lcom/google/android/gms/ads/n/a$a;

    const/4 v2, 0x1

    const-string v3, "READY"

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/ads/n/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/ads/n/a$a;->READY:Lcom/google/android/gms/ads/n/a$a;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/ads/n/a$a;

    .line 3
    sget-object v3, Lcom/google/android/gms/ads/n/a$a;->NOT_READY:Lcom/google/android/gms/ads/n/a$a;

    aput-object v3, v0, v1

    sget-object v1, Lcom/google/android/gms/ads/n/a$a;->READY:Lcom/google/android/gms/ads/n/a$a;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gms/ads/n/a$a;->e:[Lcom/google/android/gms/ads/n/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/ads/n/a$a;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/gms/ads/n/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/ads/n/a$a;

    return-object p0
.end method

.method public static values()[Lcom/google/android/gms/ads/n/a$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/n/a$a;->e:[Lcom/google/android/gms/ads/n/a$a;

    invoke-virtual {v0}, [Lcom/google/android/gms/ads/n/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/ads/n/a$a;

    return-object v0
.end method
