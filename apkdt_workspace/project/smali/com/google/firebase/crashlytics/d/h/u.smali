.class public final enum Lcom/google/firebase/crashlytics/d/h/u;
.super Ljava/lang/Enum;
.source "DataTransportState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/crashlytics/d/h/u;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALL:Lcom/google/firebase/crashlytics/d/h/u;

.field public static final enum JAVA_ONLY:Lcom/google/firebase/crashlytics/d/h/u;

.field public static final enum NONE:Lcom/google/firebase/crashlytics/d/h/u;

.field static final REPORT_UPLOAD_VARIANT_DATATRANSPORT:I = 0x2

.field static final REPORT_UPLOAD_VARIANT_LEGACY:I = 0x1

.field private static final synthetic e:[Lcom/google/firebase/crashlytics/d/h/u;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/firebase/crashlytics/d/h/u;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/google/firebase/crashlytics/d/h/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/crashlytics/d/h/u;->NONE:Lcom/google/firebase/crashlytics/d/h/u;

    .line 2
    new-instance v0, Lcom/google/firebase/crashlytics/d/h/u;

    const/4 v2, 0x1

    const-string v3, "JAVA_ONLY"

    invoke-direct {v0, v3, v2}, Lcom/google/firebase/crashlytics/d/h/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/crashlytics/d/h/u;->JAVA_ONLY:Lcom/google/firebase/crashlytics/d/h/u;

    .line 3
    new-instance v0, Lcom/google/firebase/crashlytics/d/h/u;

    const/4 v3, 0x2

    const-string v4, "ALL"

    invoke-direct {v0, v4, v3}, Lcom/google/firebase/crashlytics/d/h/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/crashlytics/d/h/u;->ALL:Lcom/google/firebase/crashlytics/d/h/u;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/firebase/crashlytics/d/h/u;

    .line 4
    sget-object v4, Lcom/google/firebase/crashlytics/d/h/u;->NONE:Lcom/google/firebase/crashlytics/d/h/u;

    aput-object v4, v0, v1

    sget-object v1, Lcom/google/firebase/crashlytics/d/h/u;->JAVA_ONLY:Lcom/google/firebase/crashlytics/d/h/u;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/crashlytics/d/h/u;->ALL:Lcom/google/firebase/crashlytics/d/h/u;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/firebase/crashlytics/d/h/u;->e:[Lcom/google/firebase/crashlytics/d/h/u;

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

.method static getState(Lcom/google/firebase/crashlytics/d/o/i/b;)Lcom/google/firebase/crashlytics/d/h/u;
    .locals 4
    .param p0    # Lcom/google/firebase/crashlytics/d/o/i/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 4
    iget v0, p0, Lcom/google/firebase/crashlytics/d/o/i/b;->g:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget p0, p0, Lcom/google/firebase/crashlytics/d/o/i/b;->h:I

    if-ne p0, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 6
    :goto_1
    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/d/h/u;->getState(ZZ)Lcom/google/firebase/crashlytics/d/h/u;

    move-result-object p0

    return-object p0
.end method

.method static getState(ZZ)Lcom/google/firebase/crashlytics/d/h/u;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/google/firebase/crashlytics/d/h/u;->NONE:Lcom/google/firebase/crashlytics/d/h/u;

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 2
    sget-object p0, Lcom/google/firebase/crashlytics/d/h/u;->JAVA_ONLY:Lcom/google/firebase/crashlytics/d/h/u;

    return-object p0

    .line 3
    :cond_1
    sget-object p0, Lcom/google/firebase/crashlytics/d/h/u;->ALL:Lcom/google/firebase/crashlytics/d/h/u;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/h/u;
    .locals 1

    .line 1
    const-class v0, Lcom/google/firebase/crashlytics/d/h/u;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/crashlytics/d/h/u;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/crashlytics/d/h/u;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/crashlytics/d/h/u;->e:[Lcom/google/firebase/crashlytics/d/h/u;

    invoke-virtual {v0}, [Lcom/google/firebase/crashlytics/d/h/u;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/crashlytics/d/h/u;

    return-object v0
.end method
