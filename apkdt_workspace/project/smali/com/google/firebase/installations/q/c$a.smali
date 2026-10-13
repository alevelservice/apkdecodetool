.class public final enum Lcom/google/firebase/installations/q/c$a;
.super Ljava/lang/Enum;
.source "PersistedInstallation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/installations/q/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/installations/q/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ATTEMPT_MIGRATION:Lcom/google/firebase/installations/q/c$a;

.field public static final enum NOT_GENERATED:Lcom/google/firebase/installations/q/c$a;

.field public static final enum REGISTERED:Lcom/google/firebase/installations/q/c$a;

.field public static final enum REGISTER_ERROR:Lcom/google/firebase/installations/q/c$a;

.field public static final enum UNREGISTERED:Lcom/google/firebase/installations/q/c$a;

.field private static final synthetic e:[Lcom/google/firebase/installations/q/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/firebase/installations/q/c$a;

    const/4 v1, 0x0

    const-string v2, "ATTEMPT_MIGRATION"

    invoke-direct {v0, v2, v1}, Lcom/google/firebase/installations/q/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/installations/q/c$a;->ATTEMPT_MIGRATION:Lcom/google/firebase/installations/q/c$a;

    .line 2
    new-instance v0, Lcom/google/firebase/installations/q/c$a;

    const/4 v2, 0x1

    const-string v3, "NOT_GENERATED"

    invoke-direct {v0, v3, v2}, Lcom/google/firebase/installations/q/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/installations/q/c$a;->NOT_GENERATED:Lcom/google/firebase/installations/q/c$a;

    .line 3
    new-instance v0, Lcom/google/firebase/installations/q/c$a;

    const/4 v3, 0x2

    const-string v4, "UNREGISTERED"

    invoke-direct {v0, v4, v3}, Lcom/google/firebase/installations/q/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/installations/q/c$a;->UNREGISTERED:Lcom/google/firebase/installations/q/c$a;

    .line 4
    new-instance v0, Lcom/google/firebase/installations/q/c$a;

    const/4 v4, 0x3

    const-string v5, "REGISTERED"

    invoke-direct {v0, v5, v4}, Lcom/google/firebase/installations/q/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/installations/q/c$a;->REGISTERED:Lcom/google/firebase/installations/q/c$a;

    .line 5
    new-instance v0, Lcom/google/firebase/installations/q/c$a;

    const/4 v5, 0x4

    const-string v6, "REGISTER_ERROR"

    invoke-direct {v0, v6, v5}, Lcom/google/firebase/installations/q/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/installations/q/c$a;->REGISTER_ERROR:Lcom/google/firebase/installations/q/c$a;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/firebase/installations/q/c$a;

    .line 6
    sget-object v6, Lcom/google/firebase/installations/q/c$a;->ATTEMPT_MIGRATION:Lcom/google/firebase/installations/q/c$a;

    aput-object v6, v0, v1

    sget-object v1, Lcom/google/firebase/installations/q/c$a;->NOT_GENERATED:Lcom/google/firebase/installations/q/c$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/installations/q/c$a;->UNREGISTERED:Lcom/google/firebase/installations/q/c$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/firebase/installations/q/c$a;->REGISTERED:Lcom/google/firebase/installations/q/c$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/firebase/installations/q/c$a;->REGISTER_ERROR:Lcom/google/firebase/installations/q/c$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/firebase/installations/q/c$a;->e:[Lcom/google/firebase/installations/q/c$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/installations/q/c$a;
    .locals 1

    .line 1
    const-class v0, Lcom/google/firebase/installations/q/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/installations/q/c$a;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/installations/q/c$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/installations/q/c$a;->e:[Lcom/google/firebase/installations/q/c$a;

    invoke-virtual {v0}, [Lcom/google/firebase/installations/q/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/installations/q/c$a;

    return-object v0
.end method
