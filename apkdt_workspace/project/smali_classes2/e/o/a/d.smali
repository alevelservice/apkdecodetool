.class public Le/o/a/d;
.super Ljava/lang/Object;
.source "NetRequest.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/o/a/d;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Le/o/a/d;
    .locals 0

    .line 5
    new-instance p0, Le/o/a/d;

    invoke-direct {p0}, Le/o/a/d;-><init>()V

    .line 6
    iput-object p2, p0, Le/o/a/d;->d:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Le/o/a/d;->a:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Le/o/a/d;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Le/o/a/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Le/o/a/d;"
        }
    .end annotation

    .line 1
    new-instance p0, Le/o/a/d;

    invoke-direct {p0}, Le/o/a/d;-><init>()V

    .line 2
    iput-object p2, p0, Le/o/a/d;->d:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Le/o/a/d;->a:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Le/o/a/d;->b:Ljava/util/HashMap;

    return-object p0
.end method
