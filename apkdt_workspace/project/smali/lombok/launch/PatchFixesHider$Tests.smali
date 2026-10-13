.class public Llombok/launch/PatchFixesHider$Tests;
.super Ljava/lang/Object;
.source "PatchFixesHider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llombok/launch/PatchFixesHider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tests"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 906
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBundle(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    .line 912
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/ProtectionDomain;->getCodeSource()Ljava/security/CodeSource;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_1

    return-object p1

    .line 917
    :cond_1
    invoke-virtual {p0}, Ljava/security/CodeSource;->getLocation()Ljava/net/URL;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    .line 918
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 920
    invoke-static {}, Lorg/eclipse/core/runtime/adaptor/EclipseStarter;->getSystemBundleContext()Lorg/osgi/framework/BundleContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/osgi/framework/BundleContext;->getBundles()[Lorg/osgi/framework/Bundle;

    move-result-object v0

    .line 921
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_2

    return-object p1

    :cond_2
    aget-object v3, v0, v2

    .line 922
    invoke-interface {v3}, Lorg/osgi/framework/Bundle;->getSymbolicName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-object v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
