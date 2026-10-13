package org.junit.experimental.categories;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;

/* compiled from: CategoryValidator.java */
/* loaded from: classes.dex */
public final class a extends org.junit.validator.a {
    static {
        Collections.unmodifiableSet(new HashSet(Arrays.asList(BeforeClass.class, AfterClass.class, Before.class, After.class)));
    }
}
