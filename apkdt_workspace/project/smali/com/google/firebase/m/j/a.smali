.class final synthetic Lcom/google/firebase/m/j/a;
.super Ljava/lang/Object;
.source "JsonDataEncoderBuilder.java"

# interfaces
.implements Lcom/google/firebase/m/e;


# static fields
.field private static final a:Lcom/google/firebase/m/j/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/m/j/a;

    invoke-direct {v0}, Lcom/google/firebase/m/j/a;-><init>()V

    sput-object v0, Lcom/google/firebase/m/j/a;->a:Lcom/google/firebase/m/j/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/firebase/m/e;
    .locals 1

    sget-object v0, Lcom/google/firebase/m/j/a;->a:Lcom/google/firebase/m/j/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/firebase/m/f;

    invoke-static {p1, p2}, Lcom/google/firebase/m/j/d;->a(Ljava/lang/Object;Lcom/google/firebase/m/f;)V

    const/4 p1, 0x0

    throw p1
.end method
